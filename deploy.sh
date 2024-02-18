#!/usr/bin/env sh

# 抛出异常信息

set -e

# push_addr (自定义的变量)：提交的远端地址
push_addr=`git remote get-url --push origin`
# commit_info (自定义的变量)：提交的commit信息
commit_info=`git describe --all --always --long`
# dist_path (自定义的变量):vuepress的打包路径
dist_path=`docs\.vuepress\dist`
# 使用的分支：github-pages
push_branch=gh-pages

# 执行打包脚本，生成静态资源站点
npm run docs:build

cd $dist_path
git init
git add -A
git commit -m "deploy: $commit_info"
git push -f $push_addr HEAD:$push_branch

cd -
rm -rf $dist_path