

set(command "make")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/arm64-v8a/third/sox/src/vorbis-stamp/vorbis-build-out.log"
  ERROR_FILE "/Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/arm64-v8a/third/sox/src/vorbis-stamp/vorbis-build-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  /Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/arm64-v8a/third/sox/src/vorbis-stamp/vorbis-build-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "vorbis build command succeeded.  See also /Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/arm64-v8a/third/sox/src/vorbis-stamp/vorbis-build-*.log")
  message(STATUS "${msg}")
endif()
