#!/bin/sh
myfile=$1

mf ${myfile}.mf
gftodvi ${myfile}.2602gf
dvipdfm ${myfile}.dvi

