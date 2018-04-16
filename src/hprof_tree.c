//
// Created by dylan on 24/02/2018.
//

#include "hprof_tree.h"
#include <memory.h>
#include <stdlib.h>
#include <stdio.h>


Node * initTree() {
    Node * newTree = (Node *) malloc(sizeof(Node));

    if (newTree == NULL) {
        perror("Failed to allocate memory to vector.");
        return NULL;
    }
    newTree->parent = NULL;
    newTree->data = NULL;
    newTree->children = NULL;
    newTree->size = 0;
    newTree->node_number = 0;

    return newTree;
}

Node * findOrCreateTreeChild(Node * currentNode, StringIndex class_string, StringIndex method_string, int node_number) {
    Node * newNode;
    NodeData * data;

    // Check if child is already created
    for (int i = 0; i < currentNode->size; i++) {
        if (currentNode->children[i]->data->class_id == class_string &&
                currentNode->children[i]->data->method_id == method_string) {
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

    // Allocate memory for data
    data = (NodeData *) malloc(sizeof(NodeData));

    data->class_id = class_string;
    data->method_id = method_string;

    // Update child
    newNode->size = 0;
    newNode->data = data;
    newNode->parent = currentNode;
    newNode->node_number = node_number;

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

Node * moveToPreviousNode(Node * currentNode, char * method_name, StringIndex class_string) {
    Node * parent;

    if (currentNode->data == NULL) {
        return NULL;
    }

    if (strcmp(string_get(currentNode->data->method_id), method_name) == 0 &&
        currentNode->data->class_id == class_string) {
        return currentNode;
    } else {
        parent = currentNode->parent;

        // This error arises when methods are skipped for efficiency
        if (parent == NULL) {
            return NULL;
        } else {
            return moveToPreviousNode(currentNode->parent, method_name, class_string);
        }
    }
}
