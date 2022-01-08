

set(command "make;install")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/x86/third/sox/src/mad-stamp/mad-install-out.log"
  ERROR_FILE "/Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/x86/third/sox/src/mad-stamp/mad-install-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  /Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/x86/third/sox/src/mad-stamp/mad-install-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "mad install command succeeded.  See also /Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/x86/third/sox/src/mad-stamp/mad-install-*.log")
  message(STATUS "${msg}")
endif()
