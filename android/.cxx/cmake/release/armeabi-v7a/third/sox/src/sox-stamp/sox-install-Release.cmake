

set(command "make;install")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/armeabi-v7a/third/sox/src/sox-stamp/sox-install-out.log"
  ERROR_FILE "/Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/armeabi-v7a/third/sox/src/sox-stamp/sox-install-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  /Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/armeabi-v7a/third/sox/src/sox-stamp/sox-install-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "sox install command succeeded.  See also /Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/armeabi-v7a/third/sox/src/sox-stamp/sox-install-*.log")
  message(STATUS "${msg}")
endif()
