cmake_minimum_required(VERSION 3.8)
project(hprof)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Os -g1 -DSKIP_NPT=1 -DLINUX=1 -DDEBUG=1 -fPIC -D_GNU_SOURCE=1")

set(JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/include)
set(JDK8 /home/dylan/Trees/jdk8/jdk/src/solaris/javavm/export)

include_directories(${JAVA_HOME})
include_directories(${JAVA_HOME}/linux)
include_directories(${JDK8})

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
        src/java_crw_demo.c
        src/java_crw_demo.h
        ${JAVA_HOME}/classfile_constants.h
        ${JAVA_HOME}/jawt.h
        ${JAVA_HOME}/jdwpTransport.h
        ${JAVA_HOME}/jni.h
        ${JAVA_HOME}/jvmti.h
        ${JAVA_HOME}/jvmticmlr.h
        ${JAVA_HOME}/linux/jawt_md.h
        ${JAVA_HOME}/linux/jni_md.h
        ${JDK8}/jvm_md.h )

add_library(hprof SHARED ${SOURCE_FILES})
target_link_libraries(hprof -lrt)