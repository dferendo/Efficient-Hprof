//
// Created by dylan on 24/02/2018.
//

#ifndef TRIE_TEMP_NEW_TRIE_H
#define TRIE_TEMP_NEW_TRIE_H

#include "hprof.h"

Node * init_trie();

Node * find_or_create_node_child(Node *currentNode, ClassIndex cnum, MethodIndex mnum, int node_number);

Node * move_to_parent(Node *currentNode);

Node * move_to_ancestor_node(JNIEnv *env, Node *currentNode, char *method_name, StringIndex class_string);

#endif //TRIE_TEMP_NEW_TRIE_H
