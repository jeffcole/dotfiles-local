# Git

## Branches

Before starting a piece of work, check out a new branch.

## Commit messages

### Follow the [`commitlint` convention] for [Conventional Commits]

#### Type

Must be one of the following:

- `build`: Changes that affect the build system or external dependencies
- `chore`: Changes that do not fit into the other types
- `ci`: Changes to CI configuration files and scripts
- `docs`: Documentation only changes
- `feat`: A new feature
- `fix`: A bug fix
- `perf`: A code change that improves performance
- `refactor`: A code change that neither fixes a bug nor adds a feature
- `revert`: A change that reverts a previous commit
- `style`: Changes that do not affect the meaning of the code
- `test`: Adding missing tests or correcting existing tests

#### Scope

Always include.

[`commitlint` convention]: https://github.com/conventional-changelog/commitlint/blob/master/%40commitlint/config-conventional/README.md
[Conventional Commits]: https://www.conventionalcommits.org/en/v1.0.0/

### Subject line

- Avoid redundant words
- Do not exceed 50 characters

### Body

Wrap at 72-characters.

It should answer:

- Why was this change necessary?
- How does it address the problem?
- Are there any side effects?

# Godot version

Use the Godot API version specified by `config/features` in the `project.godot` file.

# GDScript

Use statically typed GDScript.
