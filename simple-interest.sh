#!/bin/bash

# Compound Interest Calculator
read -p "Enter Principal amount: " p
read -p "Enter annual interest rate (e.g., 0.05 for 5%): " r
read -p "Enter Time (years): " t
read -p "Compounding frequency per year (e.g., 12 for monthly): " n

# Calculate Total Amount: A = P * (1 + r/n)^(n*t)
amount=$(echo "scale=4; $p * (1 + $r / $n) ^ ($n * $t)" | bc -l)
interest=$(echo "scale=2; $amount - $p" | bc)

echo "Total Amount after $t years: $amount"
echo "Compound Interest earned: $interest"
