//
// Created by dylan on 24/02/2018.
//

#include "hprof_trie.h"
#include <memory.h>
#include <stdlib.h>
#include <stdio.h>


Node * init_trie() {
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

Node * find_or_create_node_child(Node *currentNode, ClassIndex cnum, MethodIndex mnum, int node_number) {
    Node * newNode;
    NodeData * data;

    // Check if child is already created
    for (int i = 0; i < currentNode->size; i++) {
        if (currentNode->children[i]->data->cnum == cnum &&
                currentNode->children[i]->data->mnum == mnum) {
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

    data->cnum = cnum;
    data->mnum = mnum;

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

Node * move_to_parent(Node *currentNode) {
    if (currentNode->parent == NULL) {
        return currentNode;
    }

    return currentNode->parent;
}

Node * move_to_ancestor_node(JNIEnv *env, Node *currentNode, char *method_name, ClassIndex cnum) {
    Node * parent;

    if (currentNode->data == NULL) {
        return NULL;
    }

    if (strcmp(string_get(class_get_method_name(env, currentNode->data->cnum, currentNode->data->mnum)), method_name) == 0 &&
        currentNode->data->cnum == cnum) {
        return currentNode;
    } else {
        parent = currentNode->parent;

        // This error arises when methods are skipped for efficiency
        if (parent == NULL) {
            return NULL;
        } else {
            return move_to_ancestor_node(env, currentNode->parent, method_name, cnum);
        }
    }
}
