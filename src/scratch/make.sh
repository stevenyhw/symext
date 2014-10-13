#!/bin/sh
myfile=$1
step=$2
case $step in
    1)
    mf ${myfile}.mf
    gftodvi ${myfile}.2602gf
    dvipdfm ${myfile}.dvi
    ;;
    2)
    mf "\mode=ljfour; mode_setup; input ${myfile}.mf"
    ;;
    3)
    # pack
    num=600
    gftopk ${myfile}.${num}gf ${myfile}.${num}pk
    ;;
    4)
    num=2602
    gftodvi ${myfile}.${num}gf
    dvipdfm ${myfile}.dvi
    open ${myfile}.pdf
    ;;
esac

