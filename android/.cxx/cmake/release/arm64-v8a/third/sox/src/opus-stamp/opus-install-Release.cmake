

set(command "make;install")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/arm64-v8a/third/sox/src/opus-stamp/opus-install-out.log"
  ERROR_FILE "/Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/arm64-v8a/third/sox/src/opus-stamp/opus-install-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  /Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/arm64-v8a/third/sox/src/opus-stamp/opus-install-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "opus install command succeeded.  See also /Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/arm64-v8a/third/sox/src/opus-stamp/opus-install-*.log")
  message(STATUS "${msg}")
endif()
