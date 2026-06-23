---
name: address-feedback
description: Implement and integrate pull request feedback, and respond to comments
disable-model-invocation: true
---

## Problem

We have received pull request feedback that needs to be addressed.

## Instructions

- Use the `gh` tool to retrieve the unaddressed, directly-replyable comments for the pull request of the current branch.
- For each comment:
  - Present me with the comment and ask me whether you should proceed with implementing the feedback the reviewer is requesting. If it's not clear what the reviewer is suggesting, or if there are competing alternatives, present me with alternatives and ask me to advise.
    - If I authorize implementation of the feedback, proceed with doing so, and then:
      - Run the `/integrate` skill.
      - Run `git push --force-with-lease`.
      - Open a temporary Markdown file in the editor, using [reply.md](reply.md) as a template. Interpret the instructions in braces in that file.
      - When I save and close the file, keep track of it so that at the end of this skill, we may post a reply to the current comment populated with its contents.
    - If I don't authorize implementation of the feedback, open a file for a reply in the editor.
      - Track its contents upon save and close, for use at the end of this skill.
- Prompt me to authorize submission of all the replies created here. Don't submit a reply to any comment for which its reply file is empty.
