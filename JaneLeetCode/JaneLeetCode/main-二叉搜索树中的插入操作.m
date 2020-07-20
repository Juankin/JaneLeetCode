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
 701. 二叉搜索树中的插入操作
 给定二叉搜索树（BST）的根节点和要插入树中的值，将值插入二叉搜索树。 返回插入后二叉搜索树的根节点。 保证原始二叉搜索树中不存在新值。
 注意，可能存在多种有效的插入方式，只要树在插入后仍保持为二叉搜索树即可。 你可以返回任意有效的结果。
 迭代法
 时间复杂度：O(H)，其中 HH 指的是树的高度。平均情况下O(logN)，最坏的情况下O(N)。
 空间复杂度：O(1)
 leetcode已验证，下面代码无误
 */
struct TreeNode* insertIntoBST(struct TreeNode* root, int val){
    struct TreeNode *node = root;
    struct TreeNode *newNode = (struct TreeNode *)malloc(sizeof(struct TreeNode));
    newNode->val = val;
    newNode->left = NULL;
    newNode->right = NULL;
    while (node != NULL) {
        if (val > node->val) { //插入到右子树
            if (node->right == NULL) {
                node->right = newNode;
                return root;
            } else {
                node = node->right;
            }
        } else { //插入到左子树
            if (node->left == NULL) {
                node->left = newNode;
                return root;
            } else {
                node = node->left;
            }
        }
    }
    return newNode;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSArray *subIndex =  subSort(@[@1,@2,@4,@7,@10,@11,@7,@12,@6,@7,@16,@18,@19]);
//        NSLog(@"subIndex==%@",subIndex.description);
    }
    return 0;
}

