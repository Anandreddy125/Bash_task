#!/bin/bash

tail -n 5 "/root/Anand/hello.txt" | wc -c | xargs -I {} truncate "/root/Anand/hello.txt" -s -{}
