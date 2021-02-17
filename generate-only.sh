#!/bin/bash
#
# Created by ice1000 at 2017/3/26
#

echo "======generating LaTeX========"

cabal run resume --verbose=0 -- en >> latex/resume.tex
cabal run resume --verbose=0 -- cn >> latex/resume-cn.tex
