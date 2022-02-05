304d303
< if(JANSSON_BUILD_SHARED_LIBS)
352,359d350
< else()
<    add_library(jansson STATIC
<       ${JANSSON_SRC}
<       ${JANSSON_HDR_PRIVATE}
<       ${JANSSON_HDR_PUBLIC})
<    set_target_properties(jansson PROPERTIES
<       POSITION_INDEPENDENT_CODE true)
< endif()
