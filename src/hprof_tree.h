//
// Created by dylan on 24/02/2018.
//

#ifndef TRIE_TEMP_NEW_TRIE_H
#define TRIE_TEMP_NEW_TRIE_H

struct Node;

struct Node * initTree();

struct Node * findOrCreateTreeChild(struct Node * currentNode, int data);

struct Node * moveToParent(struct Node * currentNode);

void printTree(struct Node * root);

#endif //TRIE_TEMP_NEW_TRIE_H
