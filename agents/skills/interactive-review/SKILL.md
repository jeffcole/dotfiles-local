---
name: interactive-review
description: Human-in-the-loop review
arguments: [pr_number]
disable-model-invocation: true
---

## Problem

I want to review and edit all finding comments before posting a review.

## Instructions

- Stash any local changes.
- Check out the branch for $pr_number locally.
- Perform a review of the PR.
  - Pull context on the ticket using the project management tool's MCP server if available.
  - Pull context from the PR itself.
- Start a review of the PR in the hosting service, so that all comments will be part of the same review.
- Lead me through making comments on the review. For each finding:
  - Identify the appropriate commit and line(s) on which to comment.
  - Open an editor with a concise summary of each finding in simple language, and the full finding in a `<details>` element.
  - When I close the editor, if it has content, add the content as a comment on the review. If it has no content, do not add a comment for that finding.
- Prompt me to authorize submission of the review.
- Check out the prior branch.
- Un-stash local changes.
