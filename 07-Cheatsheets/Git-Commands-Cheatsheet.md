# Git Commands Cheatsheet 📋

## Quick Reference Guide

### Setup & Configuration

```bash
# First-time setup
git config --global user.name "Your Name"
git config --global user.email "your@email.com"

# View configuration
git config --global --list
git config user.name

# Set default editor
git config --global core.editor "vim"
```

### Creating Repositories

```bash
# Initialize new repository
git init
git init [project-name]

# Clone existing repository
git clone [url]
git clone [url] [directory]

# Clone with depth (faster)
git clone --depth 1 [url]
```

### Basic Commands

```bash
# Check status
git status
git status -s  # Short format

# View changes
git diff                    # Unstaged changes
git diff --staged          # Staged changes
git diff [branch1] [branch2]

# Add files
git add [file]
git add .                  # All changes
git add -A                 # All changes (including deletions)

# Commit
git commit -m "Message"
git commit -am "Message"   # Add and commit
git commit --amend         # Modify last commit
```

### Viewing History

```bash
# View commits
git log
git log --oneline         # Short format
git log --graph           # Branch graph
git log -n 5              # Last 5 commits
git log --author="Name"
git log --since="2 weeks ago"

# View specific commit
git show [commit-hash]
git show HEAD~1           # Previous commit
```

### Branches

```bash
# List branches
git branch                 # Local branches
git branch -a             # All branches
git branch -r             # Remote branches

# Create branch
git branch [branch-name]
git checkout -b [branch-name]  # Create and switch

# Switch branch
git checkout [branch-name]
git switch [branch-name]

# Rename branch
git branch -m [old-name] [new-name]

# Delete branch
git branch -d [branch-name]          # Safe delete
git branch -D [branch-name]          # Force delete

# Compare branches
git diff [branch1] [branch2]
```

### Merging

```bash
# Merge branch
git merge [branch-name]

# Merge with no fast-forward
git merge --no-ff [branch-name]

# Abort merge
git merge --abort

# Merge conflict resolution
# 1. Fix conflicts in files
git add [resolved-files]
git commit
```

### Rebasing

```bash
# Rebase onto another branch
git rebase [branch-name]

# Interactive rebase
git rebase -i HEAD~3       # Last 3 commits

# Abort rebase
git rebase --abort

# Continue after resolving conflicts
git rebase --continue
```

### Undo Changes

```bash
# Unstage file
git reset [file]
git reset                  # Unstage all

# Discard changes
git checkout [file]
git checkout -- .         # All files

# Undo last commit (keep changes)
git reset --soft HEAD~1

# Undo last commit (discard changes)
git reset --hard HEAD~1

# Revert commit
git revert [commit-hash]
```

### Stashing

```bash
# Save work temporarily
git stash
git stash save "Description"

# List stashes
git stash list

# Apply stash
git stash apply
git stash apply stash@{0}

# Pop stash (apply and delete)
git stash pop

# Delete stash
git stash drop
git stash drop stash@{0}
```

### Remote Operations

```bash
# View remotes
git remote
git remote -v              # Verbose

# Add remote
git remote add origin [url]

# Remove remote
git remote remove origin

# Change remote URL
git remote set-url origin [new-url]

# Fetch changes
git fetch
git fetch origin

# Pull changes
git pull                   # Fetch + merge
git pull --rebase         # Fetch + rebase

# Push changes
git push
git push origin [branch]
git push --all
git push --tags

# Push force (dangerous!)
git push --force
```

### Tags

```bash
# List tags
git tag

# Create tag
git tag [tag-name]
git tag -a [tag-name] -m "Message"

# Push tags
git push origin [tag-name]
git push origin --tags

# Delete tag
git tag -d [tag-name]
git push origin --delete [tag-name]
```

### Searching

```bash
# Search by content
git grep "search-term"

# Search by commit message
git log --grep="pattern"

# Search by author
git log --author="name"

# Search by file
git log -- [file-path]

# Find commits that changed line
git blame [file]
```

### Advanced

```bash
# Cherry-pick commit
git cherry-pick [commit-hash]

# Find bug with bisect
git bisect start
git bisect bad              # Current is bad
git bisect good [commit]    # Earlier good commit

# View reference logs
git reflog

# Clean untracked files
git clean -fd               # Delete files and directories

# View who changed what
git blame [file]
```

## Common Workflows

### Feature Branch Workflow

```bash
# Create feature branch
git checkout -b feature/my-feature

# Make changes and commit
git add .
git commit -m "Add my feature"

# Push to remote
git push origin feature/my-feature

# Create PR on GitHub
# After PR merged:

git checkout main
git pull origin main
git branch -d feature/my-feature
```

### Fix Bug Workflow

```bash
# From main branch
git checkout -b bugfix/fix-issue

# Make changes
git add .
git commit -m "Fix: Resolve issue description"

# Push and create PR
git push origin bugfix/fix-issue
```

### Release Workflow

```bash
# Create release branch
git checkout -b release/1.0.0

# Make release changes
git commit -am "Release v1.0.0"

# Tag release
git tag -a v1.0.0 -m "Version 1.0.0"

# Push
git push origin release/1.0.0
git push origin --tags
```

## Useful Aliases

Add to `.gitconfig`:

```bash
[alias]
    st = status
    co = checkout
    br = branch
    ci = commit
    unstage = reset HEAD --
    last = log -1 HEAD
    visual = log --graph --oneline --all
    diff-staged = diff --staged
```

Usage:
```bash
git st          # Same as git status
git co main     # Same as git checkout main
git visual      # Pretty graph of commits
```

## Troubleshooting

```bash
# Recover deleted branch
git reflog
git checkout -b [recovered-branch] [commit-hash]

# Find lost commits
git reflog

# Get commit from another branch
git cherry-pick [commit-hash]

# Undo force push
git reflog
git reset --hard [previous-commit]
```

---

**Print this cheatsheet and keep it handy! 📌**
