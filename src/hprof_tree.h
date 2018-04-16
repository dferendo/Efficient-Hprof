//
// Created by dylan on 24/02/2018.
//

#ifndef TRIE_TEMP_NEW_TRIE_H
#define TRIE_TEMP_NEW_TRIE_H

#include "hprof.h"

Node * initTree();

Node * findOrCreateTreeChild(Node * currentNode, StringIndex class_string, StringIndex method_string, int node_number);

Node * moveToParent(Node * currentNode);

Node * moveToPreviousNode(Node * currentNode, char * method_name, StringIndex class_string);

#endif //TRIE_TEMP_NEW_TRIE_H
