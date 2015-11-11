Local Workflow
==============

This is a good workflow for trying out git and learning some of the basics.
Use it for training purposes only. Do not use this for real projects (small or
otherwise).


Workflow
--------

Do you work as normal by creating, modifying, and deleting files and folders
using whatever tools or operating system mechanisms you like. After each
logical stopping point, stage and commit your changes.

    $ git add -A                              (1)
    $ git commit -v                           (2)

1: Stage all your changes
2: Commit your changes


Advantages
----------

- Easy


Disadvantages
-------------

- Encourages poor commit discipline.
  - One commit containing parts of different features.
  - Commits of different features are interleaved in history.
  - Commit messages usually become trite and useless.
  - History contains commits that are later invalidated by later commits
- Without commit discipline
  - Abandoning or deleting a feature becomes difficult.
  - Reverting a commit that introduced a fault.
  - Reorganizing history is more difficult.
