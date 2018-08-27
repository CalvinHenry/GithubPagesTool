#!/bin/bash
target_project_directory=~/Documents/CalvinHenry.github.io

if [ $# == 0 ] || [ $# -gt 1 ]
then
    printf "Error: Invalid Number of arguments\nUsage: GithubPagesTool <target_project_directory>"
else 
    echo "rm -Rf '$target_project_directory/*'"
    rm -Rf $target_project_directory/*
    cp $1* $target_project_directory/
    cd $target_project_directory
    git add *
    git push
fi
    