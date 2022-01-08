

set(command "make")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/x86_64/third/sox/src/ogg-stamp/ogg-build-out.log"
  ERROR_FILE "/Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/x86_64/third/sox/src/ogg-stamp/ogg-build-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  /Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/x86_64/third/sox/src/ogg-stamp/ogg-build-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "ogg build command succeeded.  See also /Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/x86_64/third/sox/src/ogg-stamp/ogg-build-*.log")
  message(STATUS "${msg}")
endif()
