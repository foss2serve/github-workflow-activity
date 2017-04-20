# GitHub Workflow Activity

## Form teams

Form a of 2 or 3 person team. It's better to work with someone who is using the same operating system as you.

Each team member will sometimes be a maintainer and sometimes a contributor. Rotate roles as necessary to ensure everyone in your team gets a chance to experience each role.


## Overview

In this activity your team will play out several scenarios following steps
described in [_Workflow Reference_](reference.md).

- Complete each part in order.
- Complete each step in each part in order.

## Part 1: Create an organization on GitHub

- Name it what you like.
- Set the default permissions so that all organization members can create projects and write to any project in the organization.
- Add all team members to the organization.


## Part 2: Create official upstream repository in organization

- Name it `ourfavorites`
- Give it a default README.md file.


## Part 3: Contributor-1 setup

- Select a team member to be Contributor-1
- Help Contributor-1 to follow _Setup: (1-4)_ in the _Workflow Reference_ to prepare his/her local and remote repositories.


## Part 4: First contribution

- Help Contributor-1 to follow _Starting your contribution: (5-13)_ to add a
  new file `favorite-foods.txt` that contains a couple of Contributor-1's
  favorite foods.
- Select someone to play Maintainer (not Contributor-1).
- Help the Maintainer to accept Contributor-1's pull-request on GitHub.
- Help Contributor-1 to follow _Update your master (27-28)_ and
  _Delete unneeded branches (29-31)_ to clean up.

Congratulations, your team has made its first contribution! Celebrate. :clap: :clap:


## Part 5: Contributor-2 setup and second contribution

- Help Contributor-2 to follow _Setup: (1-4)_ to prepare his/her local and remote repositories.
- Repeat the steps above to have contributor-2 contribute a new file
  `favorite-movies.txt` with a couple of his/her favorite movies.
- Make sure that the maintainer has accepted contributor-2's pull-request and contributor-2 has updated their master and cleaned up.

Celebrate again. :clap: :clap:

If you have 3 team members, repeat this scenario adding a file `favorite-animals.txt`.

## Part 6: First synchronization

- Contributor-1's repositories are out of synch. Help Contributor-1 follow
  _Keep your repositories up-to-date (18-23)_ to update his/her repositories.

Celebrate. But keep it small. :clap: Don't worry, there will be bigger celebrations later.


## Part 7: Contribute conflicting changes

- Have Contributor-1 and Contributor-2 independently follow the contribution
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

Celebrate enthusiastically. :clap: :clap: :clap: That was challenging.


## Part 8: Multi-round contribution

- Have contributor-1 add another food, and contributor-2 another movie.
- Have the maintainer ask for a modification through the pull-request
  (e.g., "Please pick another flavor. I don't like chocolate.").
- Have contributors make, commit, and push the new changes.
- If the maintainer is satisfied, accept the pull-requests.
- Contributors, don't forget to clean up.

Notice how pull-requests provide a way for a contributor and a maintainer to
communicate about a proposed change. Also notice how the pull-request updates
automatically as new changes are pushed to the same branch.


## Part 9: Squash

- Repeat the multi-round contribution until both contributors have made multiple
  commits.
- Maintainer, through the pull-request, ask contributors to squash their work
  into a single commit.
- Help contributors to follow _Squash your commits (24-25)_ to squash their
  commits into a single commit and push it.
- Maintainer, accept the pull-requests once it contains the same work, but only
  a single commit.
- Contributors, don't forget to clean up.

This is another moment for an enthusiastic celebration. :clap: :clap: :clap: :clap: :clap: Well done!  


## Copyright and Licensing

Copyright 2016 Darci Burdge and Stoney Jackson SOME RIGHTS RESERVED

This work is licensed under the Creative Commons Attribution-ShareAlike 4.0 International License. To view a copy of this license, visit http://creativecommons.org/licenses/by-sa/4.0/ .
