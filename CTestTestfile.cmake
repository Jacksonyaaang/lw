# CMake generated Testfile for 
# Source directory: /home/ensimag/S7/sepc/LW
# Build directory: /home/ensimag/S7/sepc/LW
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(AllTestsAllocator "alloctest")
set_tests_properties(AllTestsAllocator PROPERTIES  _BACKTRACE_TRIPLES "/home/ensimag/S7/sepc/LW/CMakeLists.txt;77;add_test;/home/ensimag/S7/sepc/LW/CMakeLists.txt;0;")
subdirs("gtest")
