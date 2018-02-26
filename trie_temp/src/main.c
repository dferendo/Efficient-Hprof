#include <stdio.h>
#include "new_trie.h"

//typedef struct {
//    int type; // Call, return or exception
//    char method_name[100];
//} Node ;

int main() {
    // Temp data
    Node * root = initTree();

    Node * child = findOrCreateTreeChild(root, 1);
    Node * child2 = findOrCreateTreeChild(root, 2);
    Node * child3 = findOrCreateTreeChild(root, 3);

    Node * child4 = findOrCreateTreeChild(root, 3);

    Node * innerchild1 = findOrCreateTreeChild(child2, 5);
    Node * innerchild2 = findOrCreateTreeChild(child2, 6);
    Node * innerchild3 = findOrCreateTreeChild(child2, 7);

    Node * outerchild1 = moveToParent(innerchild1);

    return 0;
}
