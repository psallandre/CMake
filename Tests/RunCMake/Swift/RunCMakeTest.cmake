include(RunCMake)

if(RunCMake_GENERATOR STREQUAL Xcode)
  if(XCODE_BELOW_6_1)
    run_cmake(XcodeTooOld)
  endif()
elseif(RunCMake_GENERATOR STREQUAL Ninja)
  if(CMAKE_Swift_COMPILER)
    # Add Ninja-specific Swift tests here.
  endif()
else()
  run_cmake(NotSupported)
endif()
