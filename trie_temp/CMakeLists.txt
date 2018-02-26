cmake_minimum_required(VERSION 3.8)
project(trie_temp)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")

set(SOURCE_FILES src/main.c
                 src/trie.c
                 src/trie.h
                 src/new_trie.c src/new_trie.h)

add_executable(trie_temp ${SOURCE_FILES})