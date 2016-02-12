###Tracking Changes Reflection

**How does tracking and adding changes make developers' lives easier?**

It allows developers to keep track of what changes were made and go back to previous versions if needed.

**What is a commit?**

A commit is a save point that lets you keep track of changes.

**What are the best practices for commit messages?**

A brief summary of what was changed using present tense (add as opposed to added).

**What does the HEAD^ argument mean?**

The HEAD^ argument means the last commit.

**What are the 3 stages of a git change and how do you move a file from one stage to the other?**

The 3 stages of a git change are making the changes, staging, and commiting. You move a file to the stage by using "git add (file)" and unstage it with "git reset (file)".

**Write a handy cheatsheet of the commands you need to commit your changes.**

>git status
>git add (file)
>git commit -m (commit message)

**What is a pull request and how do you create and merge one?**

A pull request is when you request that the branch merge with another branch. You use "git push origin (new branch name)", then you go to the branch on GitHub and click "New pull request" then you can click the merge button.

**Why are pull requests preferred when working with teams?**

Pull requests are preferred when working with teams because you need to have everyone know what features are in the master branch.