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

/**
 236. 二叉树的最近公共祖先
 给定一个二叉树, 找到该树中两个指定节点的最近公共祖先。
 百度百科中最近公共祖先的定义为：“对于有根树 T 的两个结点 p、q，最近公共祖先表示为一个结点 x，满足 x 是 p、q 的祖先且 x 的深度尽可能大（一个节点也可以是它自己的祖先）。”
 例如，给定如下二叉树:  root = [3,5,1,6,2,0,8,null,null,7,4]
 示例 1:
 输入: root = [3,5,1,6,2,0,8,null,null,7,4], p = 5, q = 1
 输出: 3
 解释: 节点 5 和节点 1 的最近公共祖先是节点 3。
 
 *解题思路：
 * 去以root为根节点的二叉树中查找p、q的最近公共祖先
 * ① 如果p、q同时存在于这棵二叉树中，就能成功返回它们的最近公共祖先
 * ② 如果p、q都不存在于这棵二叉树中，返回null
 * ③ 如果只有p存在于这棵二叉树中，返回p
 * ④ 如果只有q存在于这棵二叉树中，返回q
 */
struct TreeNode* lowestCommonAncestor(struct TreeNode* root, struct TreeNode* p, struct TreeNode* q) {
    if(root == NULL || root == p || root == q)
        return root;
    struct TreeNode *leftTree = lowestCommonAncestor(root->left, p, q);
    struct TreeNode *rightTree = lowestCommonAncestor(root->right, p, q);
    if(leftTree != NULL && rightTree != NULL)
        return root;
    if (leftTree != NULL)
        return leftTree;
    else
        return rightTree;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSArray *subIndex =  subSort(@[@1,@2,@4,@7,@10,@11,@7,@12,@6,@7,@16,@18,@19]);
//        NSLog(@"subIndex==%@",subIndex.description);
    }
    return 0;
}

