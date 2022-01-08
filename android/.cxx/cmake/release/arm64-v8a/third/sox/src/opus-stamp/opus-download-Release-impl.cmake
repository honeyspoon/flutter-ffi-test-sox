set(command "/Users/honeyspoon/Library/Android/sdk/cmake/3.10.2.4988404/bin/cmake;-P;/Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/arm64-v8a/third/sox/src/opus-stamp/download-opus.cmake")

execute_process(COMMAND ${command} RESULT_VARIABLE result)
if(result)
  set(msg "Command failed (${result}):\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  message(FATAL_ERROR "${msg}")
endif()
set(command "/Users/honeyspoon/Library/Android/sdk/cmake/3.10.2.4988404/bin/cmake;-P;/Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/arm64-v8a/third/sox/src/opus-stamp/verify-opus.cmake")

execute_process(COMMAND ${command} RESULT_VARIABLE result)
if(result)
  set(msg "Command failed (${result}):\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  message(FATAL_ERROR "${msg}")
endif()
set(command "/Users/honeyspoon/Library/Android/sdk/cmake/3.10.2.4988404/bin/cmake;-P;/Users/honeyspoon/projects/native_add/android/.cxx/cmake/release/arm64-v8a/third/sox/src/opus-stamp/extract-opus.cmake")

execute_process(COMMAND ${command} RESULT_VARIABLE result)
if(result)
  set(msg "Command failed (${result}):\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  message(FATAL_ERROR "${msg}")
endif()
