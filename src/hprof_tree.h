//
// Created by dylan on 24/02/2018.
//

#ifndef TRIE_TEMP_NEW_TRIE_H
#define TRIE_TEMP_NEW_TRIE_H

typedef struct NodeData {
    int class_id;
    int method_id;
} NodeData;

typedef struct Node {
    NodeData * data;
    struct Node * parent;
    struct Node ** children;
    int size;
} Node;

Node * initTree();

Node * findInTree();

Node * findOrCreateTreeChild(Node * currentNode, int class_id, int method_id);

Node * moveToParent(Node * currentNode);

#endif //TRIE_TEMP_NEW_TRIE_H
