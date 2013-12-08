#!/bin/bash
echo "running tests"
Object_Sizes=(2500 5000 7500 10000 12500 15000 17500 20000 22500 25000)
c=0
while [ $c -le 9 ]
do
    echo ${Object_Sizes[c]}$','$(./test_create ${Object_Sizes[c]})$','$(./testIntercept_create ${Object_Sizes[c]})$','$(./btreeSSD_create ${Object_Sizes[c]}) >> create.txt
    echo ${Object_Sizes[c]}$','$(./test_read ${Object_Sizes[c]})$','$(./testIntercept_read ${Object_Sizes[c]})$','$(./btreeSSD_read ${Object_Sizes[c]}) >> read.txt
    echo ${Object_Sizes[c]}$','$(./test_traversal ${Object_Sizes[c]})$','$(./testIntercept_traversal ${Object_Sizes[c]})$','$(./btreeSSD_traversal ${Object_Sizes[c]}) >> traversal.txt
    (( c++ ))
done