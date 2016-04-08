Local Workflow
==============

This is the "ideal" local workflow. It allows multiple, in-progress, features.
It keeps the commit history as clean as possible. master is the stable branch.
New features and bug fixes are developed in feature branches. When a
feature/fix is done, it is integrated with any changes in master, its commits
are squashed into nice, logical commits (probably a single commit), and it is
merged into master. This results in master having a nice, clean, linear history
of commits.


Implement a feature for your project
------------------------------------

    $ git checkout -b <feature> master        (1)
    ### modify and test                       (2)
    $ git add -A                              (3)
    $ git commit -v                           (4)
    $ git rebase master                       (5)
    $ git rebase -i master                    (6)
    $ git checkout master                     (7)
    $ git merge <feature>                     (8)
    $ git branch -d <feature>                 (9)

1: Create a feature branch.  
2-4: Work on feature branch. Repeat until feature is done.  
5: Integrate changes from master.  
6: Clean up history.  
7-8: Merge feature branch into master.  
9: Delete the feature branch.

Step 5 is necessary if you have merged other features into master after you
started the current feature.  Conflicts may arise that you have to resolve
manually. After rebasing, you also need to test that your feature (and all the
others) still work. If not, return to step 2.

In step 6, we run an interactive rebase to reorganize and squash our commits
into clean logical commits. Typically, you'll squash your all the commits in
your feature branch into a single commit. If your feature is large, you may
want to squash your commits into a few logical commits. The commit messages you
write in this step are the most important, as they will live on in master.


Switch to, or start, another branch
-----------------------------------

Before checking out another branch, be sure to save any uncommitted changes
that you don't want to lose.

    $ git add -A                                (1)
    $ git commit -m'WIP'                        (2)
    $ git checkout <other-branch>               (3)

1-2: Commit changes. The "WIP" message will help you remember that this commit
  is a work in progress.
3: Checkout the other branch and get to work.

If you need to start another branch, do the same as above but with step 3
replaced by

    $ git checkout -b <other-branch> master     (3)

The -b creates a new branch. The master at the end tells git to create the new
branch off of master, not the current branch. Although it's possible to create
a feature branch off of a feature branch, this workflow tries to keep things
simple by always creating feature branches off of master.


Return to a branch
------------------

When you return to a branch you were working on before, your last commit is
that "WIP" commit. You can check that you have such a commit with `git log`.
If you have such a commit, restore your state as follows.

    $ git reset HEAD^                 (1)

This removes the last commit and puts its changes back in the working tree.

Note: git does provide a "stash" command for temporarily save uncommitted
changes and later restoring them. However, they are not attached to a
particular branch, and your commits are really only relevant to a particular
branch, so you may as well save them there.


Abandon branch
--------------

If you want to give up on a feature, you can abandon its branch as follows:

    $ git reset --hard HEAD           (1)
    $ git checkout master             (2)
    $ git branch -D <feature>         (3)

1: Discard uncommitted changes.
2: Checkout master.
3: Delete the branch.


Advantages
----------

- Commits for a feature are generally consecutive in the history.
- Can easily abandon a feature in progress.
- Can have multiple features in progress.
- master has a clean, linear history.


Disadvantages
-------------

- Non-trivial (but not unmanageable)
