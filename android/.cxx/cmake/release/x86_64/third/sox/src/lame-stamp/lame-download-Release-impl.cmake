set(command "/Users/honeyspoon/Library/Android/sdk/cmake/3.10.2.4988404/bin/cmake;-P;/Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/x86_64/third/sox/src/lame-stamp/download-lame.cmake")

execute_process(COMMAND ${command} RESULT_VARIABLE result)
if(result)
  set(msg "Command failed (${result}):\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  message(FATAL_ERROR "${msg}")
endif()
set(command "/Users/honeyspoon/Library/Android/sdk/cmake/3.10.2.4988404/bin/cmake;-P;/Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/x86_64/third/sox/src/lame-stamp/verify-lame.cmake")

execute_process(COMMAND ${command} RESULT_VARIABLE result)
if(result)
  set(msg "Command failed (${result}):\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  message(FATAL_ERROR "${msg}")
endif()
set(command "/Users/honeyspoon/Library/Android/sdk/cmake/3.10.2.4988404/bin/cmake;-P;/Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/x86_64/third/sox/src/lame-stamp/extract-lame.cmake")

execute_process(COMMAND ${command} RESULT_VARIABLE result)
if(result)
  set(msg "Command failed (${result}):\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  message(FATAL_ERROR "${msg}")
endif()
