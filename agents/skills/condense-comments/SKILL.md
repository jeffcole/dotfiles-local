---
name: condense-comments
description: Manual corrective for models' tendency to be overly verbose with comments
disable-model-invocation: true
---

## Problem

The commits on the current branch have added code comments that are too verbose.

## Instructions

- Perform an interactive rebase of the branch.
- Edit each commit and perform the following:
  - Update the code comments made in the commit to be less verbose.
  - Comments should contain only the most critical and high level information.
  - Use complete sentences.
  - Remove any usage of dashes.
  - Remove any usage of semicolons.
  - Do not edit any actual code, only comments.
  - Do not edit commit messages.
- Complete the rebase.
