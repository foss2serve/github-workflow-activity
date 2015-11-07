Objectives
----------

Able to ...

* Configure git.
* Make and commit changes to repository.
* Add new files to repository.
* Remove file from repository.
* Modify a file and commit the change.
* Stage changes for commit.
* Unstage changes for commit.
* Explain the purpose of the stage/cache/index.
* Inspect the state of a repository.
* Undo a commit.


Setup
-----

### Git

Download and install git for your operating system:

* Windows <a target="_blank" href="http://msysgit.github.io/">http://msysgit.github.io/</a>
* Mac OSX or Linux <a target="_blank" href="http://git-scm.com/">http://git-scm.com/</a>

### SSH

You might want to setup an SSH key if you plan to work with remote repositories
a lot. See
<a target="_blank" href="https://help.github.com/articles/generating-ssh-keys">https://help.github.com/articles/generating-ssh-keys</a>



Help
----

Open a terminal (git-bash on Windows) and run the following commands.

    git help
    git help -ag
    git help init

1. What does `git help` do?
    <textarea name="q1"></textarea>

1. What does `-ag` cause `git help` to do?
    <textarea name="q2"></textarea>

1. What does `git help command` do?
    <textarea name="q3"></textarea>

You may use `git help` at any time to help you answer the questions in this
activity.



Identify yourself
-----------------

Run the following commands, replacing BOGUS NAME and BOGUS@EMAIL with your name
and email.

    git config --global user.name 'BOGUS NAME'
    git config --global user.email 'BOGUS@EMAIL'

1. What are these commands doing?
    <textarea name="q4"></textarea>

1. What is the purpose of `--global`?
    <textarea name="q5"></textarea>


Create repository
-----------------

    mkdir project
    cd project
    git init

1. What was created by `git init`?
    <textarea name="q6"></textarea>

1. Any file that starts with `.` is hidden in Linux. How do you display a hidden
file in Linux?
    <textarea name="q7"></textarea>

1. What would happen if you delete `.git`?
    <textarea name="q8"></textarea>

1. You find an old project on your hard drive. You do not remember if it is a
    under version control by git. How can you find out?
    <textarea name="q9"></textarea>


Basic commands
--------------

Use a plain text editor to create `names.txt` inside the `project` folder. Put
the names of your team in the file. Save and exit.

Run `git status` before and after each of these commands.

    git add names.txt
    git commit -m'Add our names.'
    git log

1. What kind of information does `git status` report?
    <textarea name="q10"></textarea>

1. What does `git add names.txt` do?
    <textarea name="q11"></textarea>

1. What does `git commit -m'Add our names.'` do?
    <textarea name="q12"></textarea>

1. What does `git log do`?
    <textarea name="q13"></textarea>

Use a plain text editor to create the following files:

* `birthdays.txt` - Put your birthdays in this file.
* `movies.txt` - Put the last movie each of you watched.

Run `git status` before and after each of these commands.

    git add .
    git commit  # You are in vim; write a multi-line commit message, save and quit.
    git log

1. What does `git add .` do? What do you think `.` means?
    <textarea name="q14"></textarea>

1. What does `git commit` (without -m) do?
    <textarea name="q15"></textarea>

1. If you want to write a more detailed commit message (which is good practice)
    what command would you use?
    <textarea name="q16"></textarea>



Stage/Cache/Index
-----------------

Do the following:

* Modify `names.txt` so that names are listed in _Last, First_ format, one per line.
* Modify `movies.txt` so they are in reverse alphabetical order by title.
* Create a new file `foods.txt` that contains your favorite foods (one for each
team member).

Run the following commands:

    git add names.txt
    git status

1. Below write each file name under the state that its changes are currently in.
    Compose a definition for each state.

    __Staged__
    <textarea name="q17"></textarea>

    __Unstaged__
    <textarea name="q18"></textarea>

    __Untracked__
    <textarea name="q19"></textarea>

1. If you run `git commit` what changes will be committed (___don't do it___)?
    <textarea name="q20"></textarea>

1. What command do you run to stage changes?
    <textarea name="q21"></textarea>

1. What command do you run to unstage changes?
    <textarea name="q22"></textarea>


Run the following commands:

    git diff
    git diff --cached

1. What does `git diff` display?
    <textarea name="q23"></textarea>

1. What does `git diff --cached` display?
    <textarea name="q24"></textarea>

1. Formulate a sequence of commands to unstage changes to `names.txt`, and stage
the changes to `movies.txt`.  Execute your commands and confirm they worked.
    <textarea name="q25"></textarea>

1. Edit `movies.txt`, change any one of the movies, and save it. Then run `git
status`. What do you observe? Explain what you think is going on.
    <textarea name="q26"></textarea>

1. Delete `names.txt`. Then run `git status`. What do you observe? Explain what
you think is going on.
    <textarea name="q27"></textarea>

1. Rename `movies.txt` to `last-movies`. Run `git status`. Observe and explain.
    <textarea name="q28"></textarea>

1. Formulate a sequence of commands to stage all changes including the untracked
file and commit (with any reasonable message you like). Execute them.
    <textarea name="q29"></textarea>

1. In git vernacular, `index`, `cache`, and `stage` all refer to the same thing.
What does it hold?
    <textarea name="q30"></textarea>

1. Why have a `stage`? Why not just commit all changes since the last commit?
    <textarea name="q31"></textarea>



Undo
----

    git log
    git status
    git reset --soft HEAD^
    git log
    git status

1. What does `git reset --soft HEAD^` do?
    <textarea name="q32"></textarea>

    git commit -m'Redo'
    git log
    git status
    git reset --hard HEAD^
    git log
    git status

1. What does `git reset --hard HEAD^` do?
    <textarea name="q33"></textarea>

1. What is the difference between `--hard` and `--soft`?
    <textarea name="q34"></textarea>

1. What do you think `HEAD^` means?
    <textarea name="q35"></textarea>

1. What do you think `HEAD` means?
    <textarea name="q36"></textarea>

