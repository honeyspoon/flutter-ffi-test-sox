

set(command "/Users/honeyspoon/Library/Android/sdk/cmake/3.10.2.4988404/bin/cmake;-Dmake=${make};-Dconfig=${config};-P;/Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/armeabi-v7a/third/sox/src/vorbis-stamp/vorbis-download-Debug-impl.cmake")
execute_process(
  COMMAND ${command}
  RESULT_VARIABLE result
  OUTPUT_FILE "/Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/armeabi-v7a/third/sox/src/vorbis-stamp/vorbis-download-out.log"
  ERROR_FILE "/Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/armeabi-v7a/third/sox/src/vorbis-stamp/vorbis-download-err.log"
  )
if(result)
  set(msg "Command failed: ${result}\n")
  foreach(arg IN LISTS command)
    set(msg "${msg} '${arg}'")
  endforeach()
  set(msg "${msg}\nSee also\n  /Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/armeabi-v7a/third/sox/src/vorbis-stamp/vorbis-download-*.log")
  message(FATAL_ERROR "${msg}")
else()
  set(msg "vorbis download command succeeded.  See also /Users/honeyspoon/projects/native_add/android/.cxx/cmake/debug/armeabi-v7a/third/sox/src/vorbis-stamp/vorbis-download-*.log")
  message(STATUS "${msg}")
endif()
