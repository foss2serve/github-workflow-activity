Local Single Feature Workflow
=============================

In this workflow we create a feature branch for each feature we want to work
on. When we are done, we merge the branch into master and then delete it.
For now, we'll assume that you will work on one feature at a time. That is,
before working on a new feature, you must either abandon your current one, or
finish it and merge it into master.


Implement a feature for your project
------------------------------------

    $ git checkout -b <branch-name> master    (1)
    ### modify and test                       (2)
    $ git add -A                              (3)
    $ git commit -v                           (4)
    $ git checkout master                     (5)
    $ git merge <branch-name>                 (6)
    $ git branch -d <branch-name>             (7)

1: Create a feature branch.  
2-4: Work on feature branch. Repeat until feature is done.
5-6: Merge feature branch into master.  
7: Delete the feature branch.


Abandon branch
--------------

If you want to give up on a feature, you can abandon its branch as follows:

    $ git reset --hard HEAD           (1)
    $ git checkout master             (2)
    $ git branch -D <branch-name>     (3)

1: Discard uncommitted changes.
2: Checkout master.
3: Delete the branch.


Advantages
----------

- History is a bit cleaner as commits for one feature are generally consecutive.
- Can easily abandon a feature in progress.


Disadvantages
-------------

- History is still ugly.
- Can't start work on another feature until the first one is done.
