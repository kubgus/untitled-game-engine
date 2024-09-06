# Install script for directory: /home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/libSDL2-2.0.so.0.3000.7"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/libSDL2-2.0.so.0"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so.0.3000.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libSDL2-2.0.so.0"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/libSDL2-2.0.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/libSDL2main.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/libSDL2.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/libSDL2_test.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake"
         "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2Targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2Targets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake"
         "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2mainTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2mainTargets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake"
         "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2staticTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2staticTargets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake"
         "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2/SDL2testTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/CMakeFiles/Export/f084604df1a27ef5b4fef7c7544737d1/SDL2testTargets-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL2" TYPE FILE FILES
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/SDL2Config.cmake"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/SDL2ConfigVersion.cmake"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/cmake/sdlfind.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_assert.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_atomic.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_audio.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_bits.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_blendmode.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_clipboard.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_copying.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_cpuinfo.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_egl.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_endian.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_error.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_events.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_filesystem.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_gamecontroller.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_gesture.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_guid.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_haptic.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_hidapi.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_hints.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_joystick.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_keyboard.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_keycode.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_loadso.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_locale.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_log.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_main.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_messagebox.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_metal.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_misc.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_mouse.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_mutex.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_name.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_opengl.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_opengl_glext.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_opengles.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_opengles2.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_opengles2_gl2.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_opengles2_gl2ext.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_opengles2_gl2platform.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_opengles2_khrplatform.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_pixels.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_platform.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_power.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_quit.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_rect.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_render.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_rwops.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_scancode.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_sensor.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_shape.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_stdinc.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_surface.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_system.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_syswm.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_test.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_test_assert.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_test_common.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_test_compare.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_test_crc32.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_test_font.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_test_fuzzer.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_test_harness.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_test_images.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_test_log.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_test_md5.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_test_memory.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_test_random.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_thread.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_timer.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_touch.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_types.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_version.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_video.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/SDL_vulkan.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/begin_code.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/include/close_code.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/include/SDL2/SDL_revision.h"
    "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/include-config-/SDL2/SDL_config.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL2" TYPE FILE FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/sdl2.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  
            execute_process(COMMAND /usr/bin/cmake -E create_symlink
              "libSDL2-2.0.so" "libSDL2.so"
              WORKING_DIRECTORY "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/libSDL2.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/sdl2-config")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aclocal" TYPE FILE FILES "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/sdl2.m4")
endif()

if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
  file(WRITE "/home/kubgus/dev/kubgus/untitled-game-engine/vendor/sdl2/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
