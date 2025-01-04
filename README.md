# Uncommon MATLAB Bug: Implicit Expansion with Empty Arrays and Logical Indexing

This repository demonstrates an uncommon bug in MATLAB related to implicit expansion when using logical indexing with potentially empty arrays.

The bug arises when performing logical indexing on an array that might be empty.  If not handled correctly, this can lead to unexpected errors.

## Bug Description
The `bug.m` file shows incorrect handling of empty input arrays.  It fails when passed an empty array due to how MATLAB handles implicit expansion in this scenario.

The `bugSolution.m` file shows the correct approach that addresses the issue and prevents errors.

## How to Reproduce
1. Save the provided MATLAB code (`bug.m` and `bugSolution.m`).
2. Run `bug.m` and `bugSolution.m`. Observe the difference in outputs, particularly when the input is an empty array.

## Solution
The solution explicitly checks for an empty input array before performing the logical indexing operation. This prevents the error and ensures that the function handles both non-empty and empty inputs correctly.