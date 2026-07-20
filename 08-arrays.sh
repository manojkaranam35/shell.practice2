#!/bin/bash

friends=("hari" "aditya" "rakesh" "manoj" "raza")

echo "first friend= ${friends[0]}"

echo "two friends= ${friends[@]:1:2}"

echo "clg frnds= ${friends[@]:2:3}"

echo "home frnd= ${friends[0]} ${friends[2]} ${friends[4]}"