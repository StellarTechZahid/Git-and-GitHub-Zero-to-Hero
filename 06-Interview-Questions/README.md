# Interview Preparation 🎤

Common Git, GitHub, and DevOps interview questions with detailed answers.

## Overview

This section includes:
- Basic level questions
- Intermediate level questions
- Advanced level questions
- Scenario-based questions
- System design questions
- DevOps-specific questions

## Question Categories

### 1. Git Fundamentals
- What is version control?
- Explain Git vs GitHub
- What is a repository?
- Explain commits
- What are branches?

### 2. Git Workflow
- Explain the Git workflow
- What is staging area?
- Difference between git push and git pull
- What is merging?
- What is rebasing?

### 3. GitHub Features
- What are pull requests?
- Explain GitHub Actions
- What are GitHub issues?
- Explain GitHub Pages
- What is a webhook?

### 4. Branching Strategies
- Explain Git Flow
- Explain GitHub Flow
- What is Trunk-Based Development?
- When to use which strategy?
- Branch naming conventions?

### 5. Advanced Git
- Explain git cherry-pick
- What is git stash?
- Explain git rebase
- What is interactive rebase?
- Explain git bisect

### 6. DevOps
- What is CI/CD?
- Explain GitOps
- What is IaC?
- Explain GitHub Actions workflow
- What is ArgoCD?

### 7. Scenario-Based Questions
- How to recover deleted files?
- How to undo last commit?
- How to handle merge conflicts?
- How to squash commits?
- How to split a repository?

## Question Examples

### Q1: What is the difference between `git merge` and `git rebase`?

**Answer:**
```
Git Merge:
- Combines two branches
- Creates a new commit
- Preserves complete history
- Non-destructive
- Used for shared branches

Git Rebase:
- Replays commits
- Reapplies changes
- Creates cleaner history
- Can be destructive on shared branches
- Used for local cleanup
```

### Q2: How do you handle merge conflicts?

**Answer:**
```
Steps:
1. Pull latest changes
2. Identify conflicts (marked in files)
3. Edit conflicted files
4. Manually merge changes
5. git add resolved files
6. git commit
7. Push changes
```

### Q3: Explain GitOps workflow

**Answer:**
```
GitOps:
1. Infrastructure described in Git
2. Git as single source of truth
3. Automated deployment system
4. Continuous reconciliation
5. Easy rollback (git revert)
6. Audit trail (git history)
```

## Interview Tips

✅ Understand concepts, not just commands
✅ Be ready to explain your reasoning
✅ Provide practical examples
✅ Ask clarifying questions
✅ Mention best practices
✅ Be honest about limitations
✅ Show problem-solving approach

## Preparation Strategy

### Week 1: Fundamentals
- Review basic Git concepts
- Practice basic commands
- Answer easy questions

### Week 2: Intermediate
- Study branching strategies
- Learn GitHub features
- Answer medium questions

### Week 3: Advanced
- Master complex scenarios
- Study DevOps workflows
- Answer hard questions

### Week 4: Mock Interviews
- Practice scenarios
- Get feedback
- Refine answers

## Resources

- [Pro Git Book](https://git-scm.com/book/en/v2)
- [GitHub Docs](https://docs.github.com)
- [Tech Interview Questions](https://www.techinterviewhandbook.org/)

## More Questions

For detailed Q&A on specific topics, check:
- `01-Git-Fundamentals-Q&A.md`
- `02-GitHub-Features-Q&A.md`
- `03-Branching-Strategies-Q&A.md`
- `04-DevOps-Q&A.md`
- `05-Scenario-Based-Q&A.md`

---

**Good luck with your interviews! 🍀**
