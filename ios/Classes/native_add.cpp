#include <stdint.h>

#include "sox.h"
#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

static sox_format_t * in, * out;

static int input_drain( sox_effect_t * effp, sox_sample_t * obuf, size_t * osamp)
{
  (void)effp;

  *osamp -= *osamp % effp->out_signal.channels;

  *osamp = sox_read(in, obuf, *osamp);

  if (!*osamp && in->sox_errno)
    fprintf(stderr, "%s: %s\n", in->filename, in->sox_errstr);
  return *osamp? SOX_SUCCESS : SOX_EOF;
}

static int output_flow(sox_effect_t *effp LSX_UNUSED, sox_sample_t const * ibuf, sox_sample_t * obuf LSX_UNUSED, size_t * isamp, size_t * osamp)
{
  size_t len = sox_write(out, ibuf, *isamp);

  if (len != *isamp) {
    fprintf(stderr, "%s: %s\n", out->filename, out->sox_errstr);
    return SOX_EOF;
  }

  *osamp = 0;

  (void)effp;

  return SOX_SUCCESS;
}

static sox_effect_handler_t const * input_handler(void)
{
  static sox_effect_handler_t handler = {
    "input", NULL, SOX_EFF_MCHAN, NULL, NULL, NULL, input_drain, NULL, NULL, 0
  };
  return &handler;
}

static sox_effect_handler_t const * output_handler(void)
{
  static sox_effect_handler_t handler = {
    "output", NULL, SOX_EFF_MCHAN, NULL, NULL, output_flow, NULL, NULL, NULL, 0
  };
  return &handler;
}

int example(char* in_n, char * out_n)
{
  sox_effects_chain_t * chain;
  sox_effect_t * e;
  char * vol[] = {"3dB"};

  assert(sox_init() == SOX_SUCCESS);

  assert(in = sox_open_read(in_n, NULL, NULL, NULL));

  assert(out = sox_open_write(out_n, &in->signal, NULL, NULL, NULL, NULL));

  chain = sox_create_effects_chain(&in->encoding, &out->encoding);

  e = sox_create_effect(input_handler());
  assert(sox_add_effect(chain, e, &in->signal, &in->signal) == SOX_SUCCESS);
  free(e);

  e = sox_create_effect(sox_find_effect("vol"));
  assert(sox_effect_options(e, 1, vol) == SOX_SUCCESS);
  assert(sox_add_effect(chain, e, &in->signal, &in->signal) == SOX_SUCCESS);
  free(e);

  e = sox_create_effect(sox_find_effect("flanger"));
  assert(sox_effect_options(e, 0, NULL) == SOX_SUCCESS);
  assert(sox_add_effect(chain, e, &in->signal, &in->signal) == SOX_SUCCESS);
  free(e);

  e = sox_create_effect(output_handler());
  assert(sox_add_effect(chain, e, &in->signal, &in->signal) == SOX_SUCCESS);
  free(e);

  sox_flow_effects(chain, NULL, NULL);

  sox_delete_effects_chain(chain);
  sox_close(out);
  sox_close(in);
  sox_quit();
  return 0;
}

extern "C" __attribute__((visibility("default"))) __attribute__((used))
int32_t native_add(int32_t x, int32_t y) {

    char in[] = "hello.wav";
    char out[] = "hello_mod.wav";
    int a = example(in, out);

    return x + y;
}
