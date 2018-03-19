cmake_minimum_required(VERSION 3.8)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fno-strict-aliasing -fPIC -fno-omit-frame-pointer -W -Wall  -Wno-unused -Wno-parentheses -g -D_GNU_SOURCE -DLINUX -D_REENTRANT -DHPROF_LOGGING -O2 -DNDEBUG")

set(JAVA_HOME lib/include)
set(JAVA_VM lib/javavm/export)
set(NPT lib/npt)
set(BCI lib/java_crw_demo)

project(hprof C)

include_directories(${JAVA_HOME})
include_directories(${JAVA_HOME}/linux)
include_directories(${JAVA_VM})
include_directories(${NPT})
include_directories(${BCI})


set(SOURCE_FILES
        src/debug_malloc.c
        src/debug_malloc.h
        src/hprof.h
        src/hprof_b_spec.h
        src/hprof_blocks.c
        src/hprof_blocks.h
        src/hprof_check.c
        src/hprof_check.h
        src/hprof_class.c
        src/hprof_class.h
        src/hprof_cpu.c
        src/hprof_cpu.h
        src/hprof_error.c
        src/hprof_error.h
        src/hprof_event.c
        src/hprof_event.h
        src/hprof_frame.c
        src/hprof_frame.h
        src/hprof_init.c
        src/hprof_init.h
        src/hprof_io.c
        src/hprof_io.h
        src/hprof_ioname.c
        src/hprof_ioname.h
        src/hprof_listener.c
        src/hprof_listener.h
        src/hprof_loader.c
        src/hprof_loader.h
        src/hprof_md.c
        src/hprof_md.h
        src/hprof_monitor.c
        src/hprof_monitor.h
        src/hprof_object.c
        src/hprof_object.h
        src/hprof_reference.c
        src/hprof_reference.h
        src/hprof_site.c
        src/hprof_site.h
        src/hprof_stack.c
        src/hprof_stack.h
        src/hprof_string.c
        src/hprof_string.h
        src/hprof_table.c
        src/hprof_table.h
        src/hprof_tag.c
        src/hprof_tag.h
        src/hprof_tls.c
        src/hprof_tls.h
        src/hprof_trace.c
        src/hprof_trace.h
        src/hprof_tracker.c
        src/hprof_tracker.h
        src/hprof_util.c
        src/hprof_util.h
        src/hprof_prelude.h
        src/hprof_prelude.c
        src/hprof_tree.c
        src/hprof_tree.h
        ${JAVA_HOME}/classfile_constants.h
        ${JAVA_HOME}/jni.h
        ${JAVA_HOME}/jvmti.h
        ${JAVA_HOME}/linux/jni_md.h
        ${NPT}/npt.c
        ${NPT}/npt.h
        ${NPT}/utf.c
        ${NPT}/utf.h
        ${NPT}/npt_md.h
        ${NPT}/utf_md.h
        ${NPT}/utf_md.c
        ${BCI}/java_crw_demo.h
        ${BCI}/java_crw_demo.c
        ${JAVA_VM}/jni_md.h
        ${JAVA_VM}/jvm_md.h
        )

add_library(hprof SHARED ${SOURCE_FILES})
target_link_libraries(hprof -lrt)