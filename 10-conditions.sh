#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 15 ]
then
  echo "the NUMBER $NUMBER is greater then 15"
else
  echo "the NUMBER $NUMBER is not greater then 15"
fi