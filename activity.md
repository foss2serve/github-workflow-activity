# GitHub Workflow Activity

## Copyright and Licensing

Copyright 2016, Darci Burdge and Stoney Jackson

This work is licensed under the Creative Commons Attribution-ShareAlike 4.0
International License. To view a copy of this license, visit
http://creativecommons.org/licenses/by-sa/4.0/ .

## Form teams

Form a 3-person team. If you can't form a team of 3, form a team of 2.

Assign the following roles to the members of your team. If you are in a team
of 2, assign contributor-1 and maintainer to the same person.

Roles:

- Maintainer: Creates and maintains a GitHub project.
- Contributor-1: Contributes to the GitHub project created by the maintainer.
- Contributor-2: Contributes to the GitHub project created by the maintainer.

Switch roles occasionally. Maintainer doesn't have as much to do as the
contributors. If you do switch roles, physically switch computers. In other
words, the computers should be associated with the roles. This might mean that
the owner of the computer may have to enter his/her password for GitHub
occasionally.

## Overview

In this activity your team will play out several scenarios following steps
described in _GitHub Workflow Reference_.

## Setup the project

- Help your maintainer to create a new project on GitHub named `favorites`.

## Contributor-1 setup

- Help Contributor-1 to follow _Setup: (1-4)_ to prepare his/her local and remote repositories.

## First contribution

- Help contributor-1 to follow _Starting your contribution: (5-13)_ to add a
  new file `favorite-foods.txt` that contains a couple of contributor-1's
  favorite foods.
- Help the maintainer to accept contributor-1's pull-request on GitHub.
- Help contributor-1 to follow _Update your master (27-28)_ and
  _Delete unneeded branches (29-31)_ to clean up.

Congratulations, your team has made its first contribution! Celebrate.

## Contributor-2 setup and second contribution

- Help Contributor-2 to follow _Setup: (1-4)_ to prepare his/her local and remote repositories.
- Repeat the steps above to have contributor-2 contribute a new file
  `favorite-movies.txt` with a couple of his/her favorite movies.
- Make sure that the maintainer has accepted contributor-2's pull-request and
  contributor-2 has cleaned up.

Celebrate again.

## First synchronization

- Contributor-1's repositories are out of synch. Help contributor-1 follow
  _Keep your repositories up-to-date (18-23)_ to update his/her repositories.
  Only step 18 should be necessary because contributor-1 does not have a branch
  containing changes that upstream does not have.

Celebrate. But keep it small. It was a one-line operation after all.

## Contribute conflicting changes

- Have contributor-1 and contributor-2 independently follow the contribution
  workflow to add another favorite food to the end of `favorite-foods.txt`.
- Maintainer, accept one of the pull-requests. Try to accept the other. You
  won't be able to because changes in the pull-request conflict with the other
  that you already accepted.
- Help the contributor with the unresolved pull-request to follow
  _Keep your repositories up-to-date (18-23)_ to synchronize his/her
  repositories and resolve the conflicts.
- Maintainer, note that the conflicted pull-request is automatically updated and
  should be acceptable. Accept the pull-request.
- Have contributors clean up.

Celebrate enthusiastically. That was challenging.

## Multi-round contribution

- Have contributor-1 add another food, and contributor-2 another movie.
- Have the maintainer ask for a modification through the pull-request
  (e.g., "Please pick another flavor. I don't like chocolate.").
- Have contributors make, commit, and push the new changes.
- If the maintainer is satisfied, accept the pull-requests.
- Contributors, don't forget to clean up.

Notice how pull-requests provide a way for a contributor and a maintainer to
communicate about a proposed change. Also notice how the pull-request updates
automatically as new changes are pushed to the same branch.

## Squash

- Repeat the multi-round contribution until both contributors have made multiple
  commits.
- Maintainer, through the pull-request, ask contributors to squash their work
  into a single commit.
- Help contributors to follow _Squash your commits (24-25)_ to squash their
  commits into a single commit and push it.
- Maintainer, accept the pull-requests once it contains the same work, but only
  a single commit.
- Contributors, don't forget to clean up.

This is another moment for an enthusiastic celebration. Well done!  
