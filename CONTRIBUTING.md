# Contributing Guide

First, thanks for contributing!


## Report a problem or make a suggestion

We love both! Please report the problem or make a suggestion as follows:

1. Look for an existing issue in the issue tracker that describes a similar
   problem or makes a similar suggestion. If you find one and you feel it is
   the same problem or suggestion you have, please add a comment in support of
   the issue.
2. If you feel your problem or suggestion is not the same, open a new issue and describe the problem or suggestion.


## Fixing a problem or implementing a suggestion

If you think you know how to fix a reported issue or a reported suggestion,
please contribute using the same workflow as is taught in this activity:
fork-branch-pull-request.


## Versioning

1. This project use [SemVer](https://semver.org/) version number:
   MAJOR.MINOR.PATCH.
2. The public API is defined from the perspective of the facilitator.
   Specifically the interface includes the activity's prerequisites, learning
   outcomes, time requirements, material requirements, team composition
   requirements, and facilitation requirements.
3. An increment in the MAJOR version number indicates that a change to the API
has been made that would require the facilitator to make an adjustment in their
course or the delivery of this activity before successfully adopting the new
version over the previous in their course. Here are some examples of changes
that would likely cause the MAJOR version number to be incremented.
    * Adding or removing a learning outcome (e.g., students will no longer
      learn the `git add` command).
    * Adding or removing a prerequisite (e.g., students now need to know
      calculus before participating in this activity)
    * Changing from markdown to another delivery format (e.g., now requires
      Googld Doc)
    * A change in the required materials or course prep (e.g., now need
      sticky-notes)
4. An increment in the MINOR version number indicates that improvements have
been made that should not violate the API thus allowing a facilitator to adopt
without requiring an adjustment in their course or the delivery of this
activity. However, facilitators should still make themselves aware of the
changes before adopting, just in case. Here are some examples of changes that
likely would require the MINOR version number to be incremented.
    * Adding an optional question
    * Reordering questions
    * Adding a note about common pit-falls
    * Adding or adjusting facilitator notes
5. An increment in the PATCH version number indicates that one or more
non-breaking bug-fix or cosmetic changes have been made. Again these should not
violate the API allowing facilitators to adopt the new version without
adjustment to their course. Again, facilitators should make themselves aware of
the changes before adopting, just in case. Here are some examples of changes
would likely only require the PATCH number to be incremented.
    * Fixing a typo
    * Fixing grammar
    * Fixing a broken link
    * Making a cosmetic change


## Merging a PR

1. In the PR, update README.md with the new version number determined as
   follows (the PR author must do this or give the maintainer permission to
   modify their PR). Start with the current version in README.md from master.
   If the PR contains a commit with a trivial bugfix, increment PATCH.  If the
   PR contains one or more commits that represent an improvement that are
   backwards compatible, increment MINOR and reset PATCH to 0. If the PR
   contains a breaking change, increment MAJOR and reset MINOR and PATCH to 0.
   This is the new version number.

2. Edit the PR title to ensure it is a good title for the squashed commit you are about to create.

3. Draft a commit message (in a PR comment or a separate editor) that
    - [ ] Summarizes the changes in the PR
    - [ ] Lists each issue the PR closes with a line "Closes #k" where k is the
      issue's number (not the PR's number)
    - [ ] Lists related issues that the PR doesn't close with a line "Related
      #k" where k is the issue's number (not the PR's number)
    - [ ] Contains a Co-authored-by: <name> <email> for every author beyond the
      first that had a commit in the PR

4. Merge the PR using the "squash and merge" feature. Provide the commit
   message when prompted.


## Small changes by a maintainer

A small change (e.g., fixing a typo) may be made by a maintainer directly to
master. If this is done, be sure to increment PATCH in README.md at the same
time.
