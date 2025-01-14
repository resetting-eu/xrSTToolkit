# - try to find glut library and include files
#  GLUT_INCLUDE_DIR, where to find GL/glut.h, etc.
#  GLUT_LIBRARIES, the libraries to link against
#  GLUT_FOUND, If false, do not try to use GLUT.
# Also defined, but not for general use are:
#  GLUT_glut_LIBRARY = the full path to the glut library.
#  GLUT_Xmu_LIBRARY  = the full path to the Xmu library.
#  GLUT_Xi_LIBRARY   = the full path to the Xi Library.

IF (WIN32)
  FIND_PATH( GLUT_INCLUDE_DIR NAMES GL/glut.h 
    PATHS ${SOURCE_BASE_DIR}/freeglut-2.6.0/include
      ${SOURCE_BASE_DIR}/glut/include
    )
  FIND_LIBRARY( GLUT_glut_LIBRARY NAMES glut glut32 freeglut freeglut_static
    PATHS
    ${OPENGL_LIBRARY_DIR}
    ${SOURCE_BASE_DIR}/glut/Release
    ${SOURCE_BASE_DIR}/glut/lib
    ${SOURCE_BASE_DIR}/glut/lib/Release
    ${SOURCE_BASE_DIR}/freeglut-2.6.0/VisualStudio2008/Release
    ${SOURCE_BASE_DIR}/freeglut-2.6.0/VisualStudio2008Static/Release
    ${SOURCE_BASE_DIR}/freeglut-2.6.0/VisualStudio2008/x64/Release
    ${SOURCE_BASE_DIR}/freeglut-2.6.0/VisualStudio2008Static/x64/Release    
    )

  IF(NOT ${HUGIN_SHARED})
    ADD_DEFINITIONS(-DFREEGLUT_STATIC)
  ENDIF()
ELSE (WIN32)
  
  IF (APPLE)
    # These values for Apple could probably do with improvement.
    FIND_PATH( GLUT_INCLUDE_DIR glut.h
      /System/Library/Frameworks/GLUT.framework/Versions/A/Headers
      ${OPENGL_LIBRARY_DIR}
      )
    SET(GLUT_glut_LIBRARY "-framework GLUT" CACHE STRING "GLUT library for OSX") 
    SET(GLUT_cocoa_LIBRARY "-framework Cocoa" CACHE STRING "Cocoa framework for OSX")
  ELSE (APPLE)
    
    FIND_PATH( GLUT_INCLUDE_DIR GL/glut.h
      /usr/include/GL
      /usr/openwin/share/include
      /usr/openwin/include
      /opt/graphics/OpenGL/include
      /opt/graphics/OpenGL/contrib/libglut
      )
  
    FIND_LIBRARY( GLUT_glut_LIBRARY glut
      /usr/openwin/lib ${SYSTEM_LIB_DIRS}
      )
    
    FIND_LIBRARY( GLUT_Xi_LIBRARY Xi
      /usr/openwin/lib /usr/lib/x86_64-linux-gnu
      )
    
    FIND_LIBRARY( GLUT_Xmu_LIBRARY Xmu
      /usr/openwin/lib /usr/lib/x86_64-linux-gnu
      )
    
  ENDIF (APPLE)
  
ENDIF (WIN32)

SET( GLUT_FOUND "NO" )
IF(GLUT_INCLUDE_DIR)
  IF(GLUT_glut_LIBRARY)
    # Is -lXi and -lXmu required on all platforms that have it?
    # If not, we need some way to figure out what platform we are on.
    SET( GLUT_LIBRARIES
      ${GLUT_glut_LIBRARY}
      ${GLUT_Xmu_LIBRARY}
      ${GLUT_Xi_LIBRARY} 
      ${GLUT_cocoa_LIBRARY}
      )
    SET( GLUT_FOUND "YES" )
    
    #The following deprecated settings are for backwards compatibility with CMake1.4
    SET (GLUT_LIBRARY ${GLUT_LIBRARIES})
    SET (GLUT_INCLUDE_PATH ${GLUT_INCLUDE_DIR})
    
  ENDIF(GLUT_glut_LIBRARY)
ENDIF(GLUT_INCLUDE_DIR)

IF (GLUT_FOUND)
	MESSAGE(STATUS "GLUT Found")
ELSE (GLUT_FOUND)
	MESSAGE(FATAL_ERROR "Could not find GLUT")
ENDIF (GLUT_FOUND)

MARK_AS_ADVANCED(
  GLUT_INCLUDE_DIR
  GLUT_glut_LIBRARY
  GLUT_Xmu_LIBRARY
  GLUT_Xi_LIBRARY
  )
