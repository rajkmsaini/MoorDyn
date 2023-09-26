include(CMakeFindDependencyMacro)

set(MOORDYN_EXTERNAL_EIGEN @EXTERNAL_EIGEN@)
set(MOORDYN_USE_VTK @USE_VTK@)
set(MOORDYN_NEEDS_VTK @MOORDYN_PACKAGE_IGNORE_VTK_DEPENDENCY@)
set(MOORDYN_PYTHON_WRAPPER @PYTHON_WRAPPER@)
set(MOORDYN_FORTRAN_WRAPPER @FORTRAN_WRAPPER@)
set(MOORDYN_MATLAB_WRAPPER @MATLAB_WRAPPER@)
set(MOORDYN_SINGLEPRECISSION @MOORDYN_SINGLEPRECISSION@)
set(MOORDYN_SSE @MOORDYN_SSE@)
set(MOORDYN_FASTMATH @MOORDYN_FASTMATH@)

if(MOORDYN_EXTERNAL_EIGEN)
    find_dependency(Eigen3)
endif()
if(MOORDYN_USE_VTK AND MOORDYN_NEEDS_VTK)
    find_dependency(VTK)
endif()

include("${CMAKE_CURRENT_LIST_DIR}/MoorDynTargets.cmake")
include("${CMAKE_CURRENT_LIST_DIR}/MoorDynConfigVersion.cmake")
