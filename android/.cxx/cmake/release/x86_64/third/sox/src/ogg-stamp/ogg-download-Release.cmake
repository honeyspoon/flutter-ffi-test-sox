

set(command "/Users/honeyspoon/Library/Android/sdk/cmake/3.10.2.4988404/bin/cmake;-Dmake=${make};-Dconfig=${config};-P;/Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/x86_64/third/sox/src/ogg-stamp/ogg-download-Release-impl.cmake")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/x86_64/third/sox/src/ogg-stamp/ogg-download-out.log"
  ERROR_FILE "/Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/x86_64/third/sox/src/ogg-stamp/ogg-download-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  /Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/x86_64/third/sox/src/ogg-stamp/ogg-download-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "ogg download command succeeded.  See also /Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/x86_64/third/sox/src/ogg-stamp/ogg-download-*.log")
  message(STATUS "${msg}")
endif()
