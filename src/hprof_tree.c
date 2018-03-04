//
// Created by dylan on 24/02/2018.
//

#include "hprof_tree.h"
#include <memory.h>
#include <stdlib.h>
#include <stdio.h>

typedef struct Node {
    int data;               // Change to struct required. Tree will not be generalised.
    struct Node * parent;
    struct Node ** children;
    int size;
} Node;


Node * initTree() {
    Node * newTree = (Node *) malloc(sizeof(Node));

    if (newTree == NULL) {
        perror("Failed to allocate memory to vector.");
        return NULL;
    }
    newTree->parent = NULL;
    newTree->data = 0;
    newTree->children = NULL;
    newTree->size = 0;

    return newTree;
}

Node * findOrCreateTreeChild(Node * currentNode, int data) {
    Node * newNode;

    // Check if child is already created
    for (int i = 0; i < currentNode->size; i++) {
        if (currentNode->children[i]->data == data) {
            return currentNode->children[i];
        }
    }

    // Otherwise create the child

    // If first entry, malloc the child array
    if (currentNode->size == 0) {
        currentNode->children = (Node **) malloc(currentNode->size + 1 * sizeof(Node));
    } else {
        Node ** temp;
        temp = (Node **) realloc(currentNode->children, (currentNode->size + 1) * sizeof(Node));

        if (temp == NULL) {
            perror("Failed to re-allocate memory.");
            // Different error since when realloc fails, the previous memory is still there.
            return NULL;
        }

        currentNode->children = temp;
    }

    // Allocate memory for new Node
    newNode = (Node *) malloc(sizeof(Node));

    // Update child
    newNode->size = 0;
    newNode->data = data;
    newNode->parent = currentNode;

    // Update parent
    currentNode->children[currentNode->size] = newNode;
    currentNode->size = currentNode->size + 1;

    return newNode;
}

Node * moveToParent(Node * currentNode) {
    if (currentNode->parent == NULL) {
        return currentNode;
    }

    return currentNode->parent;
}


void printTree(Node * root) {
    // TODO: Do we need this?
}