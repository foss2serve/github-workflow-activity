# Single Contributor Workflow

This workflow is for a single person wanting to contribute to a project on
GitHub. It assumes that the project accepts pull-requests against its master
branch. It also assumes that the contributor will be working alone to develop
contributions.

## Workflow Overview

For each project

1. Fork
2. Clone
3. Link to upstream

For each feature

4. Branch
5. Work
6. Integrate
7. Rebase
8. Push
9. Issue pull-request
10. Delete branch

Repeat 5-8 until maintainer is satisfied or you give up.

## 1. Fork

Use GitHub to find the project you want to work on and fork it.  The original
project we'll call _upstream_. Your fork we'll call _origin_. You only need to
do this once when you first start working on a project, unless you delete your
fork of the project on GitHub.

## 2. Clone

Use git on your local computer to clone origin into a local directory.

    $ git clone <origin-url> <directory>

We'll call this clone the _local_ repository. You only need to do this once
when you first start working on a project, unless you delete your local
repository of the project.

## 3. Link to upstream

Create a link, a.k.a. a remote, to upstream.

    $ git remote add upstream <upstream-url>

This will make it easier to refer to upstream within your local git repository.
You only need to do this once when you first start working on a project, unless
you delete your local repository of the project.

## 4. Branch

Create and checkout a branch on which you will work.

    $ git checkout -b <branch-name> master

Give it a name based on the bug you are fixing or the feature you are
implementing. You only need to do this once when you first start working on a
feature, unless you delete this feature branch. For simplicity, we'll assume
that you will work on this feature until it is done, or you give up.

## 5. Work

Time to work! Using your favorite IDE and operating system, start implementing.
Periodically stage and commit your changes to the local repository as follows:

    $ git add --all .
    $ git commit -v

The above is a very rough approximation of working with git locally during
development. This workflow assumes you know what you are doing when it comes
to working with git locally.

## 6. Integrate

Others may have contributed to upstream while you have been working on your
feature/bug. Before you can contribute your new feature, you need to integrate
your work with the new changes in upstream.

    $ git fetch upstream master:master
    $ git rebase master

The first command updates your local master with upstream's master. Since we
never change master locally, this command will always succeed (unless there is
some connection issue). If there are no new commits from upstream, you can
skip the second command.

The second command essentially moves your feature branch to the end of master
by replaying them. This will give you a cleaner history. You may need to
resolve conflicts during this step. Also, don't forget to retest. If you find
any problems, return to step 5.

## 7. Rebase

I know, you just rebased. This time rebase interactively and clean up your
history.

    $ git rebase -i master

If your feature/bug-fix is fairly small, then you can probably squash your
commits into a single commit. If it's bigger, you'll need to organize and
squash your commits into a few logical commits.

## 8. Push

Push your commits to origin.

    $ git push -f origin <branch-name>

The -f is only necessary if a we did a rebase and this is not our first commit.
But it shouldn't hurt to have it there on the first push. You will read many
scary things about -f (--force). As a general rule, it's not a good idea to
rewrite published history. In this workflow it's reasonably safe since no-one
but you and maybe upstream's maintainer should have downloaded your feature
branch. If the maintainer has, s/he should know what s/he is doing and be
prepared for such events.

## 9. Issue Pull-Request

Use GitHub to issue a Pull-Reguest from your feature branch to master on
upstream. You only need to do this once per feature. When you update your
feature branch, your pull-request is automatically updated.

Psst. You aren't done! At this point, you are waiting for upstream's maintainer
to review your work. S/he will likely ask you to make adjustments to your code
before s/he accepts your pull-request. In particular, if the maintainer has
accepted other pull-requests since you made yours, your feature may become
conflicted and need to be integrated with the changes from those other
pull-requests. Repeat steps 5-8 until the maintainer accepts your work, tells
you that they will never accept your work, or you give up.

## 10. Delete Branch

Only delete your feature branch if your pull-request was accepted, or you are
giving up.

    $ git checkout master
    $ git branch -D <branch-name>
    $ git push origin :<branch-name>

You can't delete a branch you are on, so the first command move you to master.
The second deletes the local branch. The third deletes the branch on origin.
