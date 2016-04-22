### Prerequisites

- You have a GitHub account and you know your username and password. If you
  don't have one, create one now.
- You have Git 2+ installed and configured.
- You know how to open a terminal and generally work from the command-line.
- You know enough of vi/m to edit, move around in, save, and quit files.

### Contribution Workflow Overview

The workflow described below provides the typically operations and the order
they are usually performed in to develop and contribute work to another project.
Most of the operations are issued from the command-line. These lines start with `$`.
Do not type `$`. This is the prompt that the command-line displays to you to
indicate that it is ready for you to type a command. Lines that start with `###`
are performed using GitHub through a browser. The numbers at the end of each
line will be used in later sections to refer back to specific lines; do not type
these either. When you see a term in all capital letters surrounded by angle
brackets, e.g., `<MY_URL>`, replace it with a value appropriate to the project
you are working on. A list of these placeholders and their meaning are below:

- `<MY_URL>` - The URL to your GitHub hosted repository. To find it, navigate to
  your repository on GitHub and to the right of the green "New Pull Request"
  button, you'll find an HTTPS or SSH button followed by a box containing a URL.
  That's the URL you need. Unless you have configured your GitHub account with
  an SSH key for your local machine, use the URL for HTTPS.
- `<THEIR_URL>` - The URL for the project's repository that you would like to
  contribute to. Find it by navigating to their repository on GitHub and copy
  the URL in the box right of the `SSH` or `HTTPS` button. Use `HTTPS` since
  this is not your repository.
- `<DIR>` - This is any directory name you like. But use the same directory for
  each occurrence of `<DIR>`.
- `<BRANCH_NAME>` - This is a branch name of your choosing. Choose one that is
  related to the bug your are fixing or the feature you are implementing.
  Whatever you choose, use the same branch name throughout the example.


### Setup: (1-4)

When you first start working on a project, you'll need to fork their project
(1), clone your fork locally (2-3), and create a remote back to their project in
your local repository (4). Once you've done this setup for a project, you will
not need to do it again unless you delete the fork, your local clone, or the
remote.

```bash
### Use GitHub to fork their repository.                (1)
$ git clone <MY_URL> <DIR>                              (2)
$ cd <DIR>                                              (3)
$ git remote add upstream <THEIR_URL>                   (4)
```


### Starting your contribution: (5-13)

When you start working on a contribution, you need to create a branch to hold
your work (5), do a little work and commit it (6-10), push your new branch to
your repository on GitHub (11), and create a pull-request from your new branch
to master in the project's repository on GitHub (12-13).

The purpose of the pull-request isn't to get the maintainer to accept your work
(yet). It starts a conversation with the maintainer. They can review what you
are trying to do and give you feedback early. That way, if you are on the wrong
track or the maintainer is not interested in your idea, you can find out before
you waste too much time implementing your idea.

Lines (6-8) are just an example of changes you might make. Instead, make any
changes you like using any tool you like.

```bash
$ git checkout -b <BRANCH_NAME>                         (5)
$ vim file1                                             (6)
$ rm file2                                              (7)
$ mv file3 file4                                        (8)
$ git add -A                                            (9)
$ git commit -v                                        (10)
$ git push -u origin <BRANCH_NAME>                     (11)
### Use GitHub to open a pull request                  (12)
### from <BRANCH_NAME> in yours to master on theirs.   (13)
```

### Work (14-17)

Keep working on your idea, committing and publishing your work as you go
(14-17). The pull-request will automatically be updated with the new commits you
push to your repository on GitHub, allowing the maintainer to follow your
progress as you go.

Again, line (14) is just an example of a change you might make. Make whatever
changes you like using whatever tools you like.

```bash
$ vim file4                                            (14)
$ git add -A                                           (15)
$ git commit -v                                        (16)
$ git push origin <BRANCH_NAME>                        (17)
```

### Keep your repositories up-to-date (18-23)

While you are working on your idea, the maintainer may have accepted work from
other contributors. As that happens, the project's master branch will contain
commits that yours do not. You'll need to fetch these commits into your local
master (18), rebase your work on top of those commits (19), and push your
branches to your repository on GitHub (23). When you rebase your work (19) you
might find that your changes are incompatible with those you fetched from
upstream. You will need to resolve any conflicts that git identifies (20-22).
GitHub has a lovely tutorial on resolving conflicts [1].

It's a good idea to update your repositories regularly so that your work does
not become too stale.

Again, as you push your work to your repository on GitHub, the pull-request
is updated automatically.

Line (20) is just an example of a change you might make. Make whatever changes
you like using whatever tools you like.

```bash
$ git fetch upstream master:master                     (18)
$ git rebase master                                    (19)
$ vim file1                                            (20)
$ git add -A                                           (21)
$ git rebase --continue                                (22)
$ git push -f origin master <BRANCH_NAME>              (23)
```

### Squash your commits (24-25)


If you are following best practices, you will make many small commits as you
develop your idea. Sometimes earlier commits are invalidated/corrected by later
commits as you refine your solution. Your commit log becomes a diary of how you
developed your solution. This log is sometimes useful to you as you develop your
idea, but usually maintainers will ask you to squash your commits (24) into just
a few (often one) logical commit that implements your feature, or fixes the bug.
That helps keep the log of the main project cleaner, and more clearly identifies
which commits are responsible for implementing which features or fixing which
bugs. Usually you squash when you near completion of your implementation, but a
maintainer may ask you to squash periodically as you go because it may make it
easier for them to review your changes.

In any case, you will periodically squash your commits (24) and push the
squashed version to your repository on GitHub (25). Again, the pull-request will
be updated automatically.

To squash commits, we perform an interactive rebase (24). This will put us into
and editor (vim most likely) with a list of the commits that we are rebasing at
the top. To squash them into one commit, change the first word in every line
after the first from `pick` to `squash`. Save and quit. Git will combine all the
commits into the first and will again put you into an editor to create the final
commit message for the newly squashed commit. If you have been providing good
commit messages as you go along, writing a good final commit message should be
relatively easy.

GitHub has a nice article on interactive rebases [2].

```bash
$ git rebase -i master                                 (24)
$ git push -f origin <BRANCH_NAME>                     (25)
```

### Maintainer accepts your pull-request (26)


After all your hard work, hopefully the maintainer will eventually accept your
pull-request, which will merge your changes into their master branch.

```bash
### Maintainer accepts your pull-request               (26)
```

### Update your master (27-28)

After the maintainer has accepted your pull-request, your need to update your
master with the new changes in upstream, which are yours (27-28)! You follow the
same procedure as in "Keeping your repositories up-to-date", except that you
don't  need to rebase. That's because your work is already included in master.

```bash
$ git fetch upstream master:master                     (27)
$ git push origin master                               (28)
```

### Delete unneeded branches (29-30)

Now that your work has been accepted in upstream, you can safely delete the
branches you were working on (29-30). If you ever abandon your effort before
a pull-request is accepted, you can also delete your branch; but you'll need
to use -D (capital D) in (29).

```bash
$ git checkout master                                  (29)
$ git branch -d <BRANCH_NAME>                          (30)
$ git push origin :<BRANCH_NAME>                       (31)
```

### References

[1] GitHub. _Resolving a Merge Conflict from the Command Line_. Accessed April
2016.
<https://help.github.com/articles/resolving-a-merge-conflict-from-the-command-line/>.

[2] GitHub. _About Git Rebase_. Accessed April 2016. <https://help.github.com/articles/about-git-rebase/>.
