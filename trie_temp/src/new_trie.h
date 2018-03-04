//
// Created by dylan on 24/02/2018.
//

#ifndef TRIE_TEMP_NEW_TRIE_H
#define TRIE_TEMP_NEW_TRIE_H

typedef struct Node {
    int data;               // Change to struct required. Tree will not be generalised.
    struct Node * parent;
    struct Node ** children;
    int size;
} Node;

Node * initTree();

Node * findOrCreateTreeChild(Node * currentNode, int data);

Node * moveToParent(Node * currentNode);

void printTree(Node * root);

#endif //TRIE_TEMP_NEW_TRIE_H
