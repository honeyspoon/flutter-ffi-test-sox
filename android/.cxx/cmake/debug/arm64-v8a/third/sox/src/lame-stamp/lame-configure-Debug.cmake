

set(command "/Users/honeyspoon/Library/Android/sdk/cmake/3.10.2.4988404/bin/cmake;-E;env;PKG_CONFIG_PATH=/Users/honeyspoon/projects/native_add/android/third/sox/../install/lib/pkgconfig;LDFLAGS=-L/Users/honeyspoon/projects/native_add/android/third/sox/../install/lib ;CFLAGS=-I/Users/honeyspoon/projects/native_add/android/third/sox/../install/include -fvisibility=hidden ;/Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/arm64-v8a/third/sox/src/lame/configure;--quiet;--disable-shared;--enable-static;--prefix=/Users/honeyspoon/projects/native_add/android/third/sox/../install;--with-pic;--disable-dependency-tracking;--disable-debug;--disable-examples;--disable-doc;--enable-nasm")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/arm64-v8a/third/sox/src/lame-stamp/lame-configure-out.log"
  ERROR_FILE "/Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/arm64-v8a/third/sox/src/lame-stamp/lame-configure-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  /Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/arm64-v8a/third/sox/src/lame-stamp/lame-configure-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "lame configure command succeeded.  See also /Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/arm64-v8a/third/sox/src/lame-stamp/lame-configure-*.log")
  message(STATUS "${msg}")
endif()