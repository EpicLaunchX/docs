# Standards and Conventions


## Branch Naming Convention
Create your branches with a structured naming pattern to keep our repository organized:

Pattern: `launch_{number}_task_{number}`

Example: For working on Task 1 of Launch 1, the branch name should be `launch_1_task_1`.

## Commit Guidelines
Follow the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) standards for all your commits. This pattern enhances readability and helps automate the changelog generation.


## Pull Request (PR) Practices
Naming: Align PR names with the [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/) format to maintain consistency.

Description: Include the task closure keyword in the PR body, e.g., `Closes #1` for automatically linking and closing the related issue upon PR merge.

Learn more: [Linking a pull request to an issue using a keyword](https://docs.github.com/en/issues/tracking-your-work-with-issues/linking-a-pull-request-to-an-issue#linking-a-pull-request-to-an-issue-using-a-keyword).

## Testing and Quality Assurance

Unit Testing: Implement and pass unit tests to fulfill the Test and Coverage checks before requesting a PR review.
> We use [pytest](https://docs.pytest.org/en/8.0.x/) as test library


## Setting Up the Project

### Initial Setup

First, set up a virtual environment and activate it:

``` bash
python3.11 -m venv .venv
source .venv/bin/activate
```

### Installing Dependencies

Utilize flit as the package manager and install development dependencies:

```bash
make install-flit
make enable-pre-commit-hooks
make install-dev
```

### Useful Commands
Familiarize yourself with the Makefile for commonly used commands, simplifying repetitive tasks:


In the project repo you can read `Makefile` and make yourself familiar with its structure and commands.

The idea is pretty simple, everything that is repetitive can be wrapped in make command.

#### Run unit tests

```bash
make test
```

#### **Always** run the formatter, before commits

```bash
make format
```

#### **Always** run the linter check, before commits

```bash
make lint
```

#### To run the security check:

```bash
make secure
```

#### To run the type check:

```bash
make type-check
```

Each command helps ensure that your contributions are not only consistent with our project's standards but also maintain a high quality. Engage with these tools to make your development process more effective and efficient.