#!/bin/bash
#
# Created by ice1000 at 2017/3/26
#

echo "======generating LaTeX========"

cabal run resume --verbose=0 -- en >> latex/resume.tex
cabal run resume --verbose=0 -- cn >> latex/resume-cn.tex

echo "=======building LaTeX========="

make -C latex
mv latex/*.pdf ./pdf
make -C latex clean-tex

echo "===initialize git repository=="

git init
git remote add origin https://wzb3422:$GITHUB_TOKEN@github.com/wzb3422/latex-resume.git

echo "======committing changes======"

git add *
git add .gitignore .github
git commit -a -m ":tada: refresh everything" >> commit.log

echo "=====pushing, please wait====="

git push --force origin HEAD
git status

echo "========all tasks done========"

rm *.log
