//
// Created by dylan on 24/02/2018.
//

#ifndef TRIE_TEMP_NEW_TRIE_H
#define TRIE_TEMP_NEW_TRIE_H

typedef struct Node {
    void * data;
    struct Node * parent;
    struct Node ** children;
    int size;
} Node;

Node * initTree();

#endif //TRIE_TEMP_NEW_TRIE_H
