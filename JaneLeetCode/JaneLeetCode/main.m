//
//  main.m
//  JaneLeetCode
//
//  Created by yuqin on 2020/7/13.
//  Copyright © 2020 JJS. All rights reserved.
//

#import <Foundation/Foundation.h>

struct TreeNode {
    int val;
    struct TreeNode *left;
    struct TreeNode *right;
};

 /*
  
 */
struct TreeNode* insertIntoBST(struct TreeNode* root, int val){
    struct TreeNode *node = root;
    struct TreeNode *newNode = (struct TreeNode *)malloc(sizeof(struct TreeNode));
    while (node != NULL) {
        if (val > node->val) { //插入到右子树
            if (node->right == NULL) {
                newNode->val = val;
                node->right = newNode;
                return root;
            } else {
                node = node->right;
            }
        } else { //插入到左子树
            if (node->left == NULL) {
                newNode->val = val;
                node->left = newNode;
                return root;
            } else {
                node = node->left;
            }
        }
    }
    newNode->val = val;
    return newNode;
}
//
//TreeNode insertIntoBST(TreeNode root, int val) {
//    TreeNode node = root;
//    while (node != null) {
//        // insert into the right subtree
//        if (val > node.val) {
//            // insert right now
//            if (node.right == null) {
//                node.right = new TreeNode(val);
//                return root;
//            }
//            else node = node.right;
//        }
//        // insert into the left subtree
//        else {
//            // insert right now
//            if (node.left == null) {
//                node.left = new TreeNode(val);
//                return root;
//            }
//            else node = node.left;
//        }
//    }
//    return new TreeNode(val);
//}



int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSArray *subIndex =  subSort(@[@1,@2,@4,@7,@10,@11,@7,@12,@6,@7,@16,@18,@19]);
//        NSLog(@"subIndex==%@",subIndex.description);
    }
    return 0;
}

