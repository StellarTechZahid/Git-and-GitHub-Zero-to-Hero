# Chapter 02: Git Basics

**The most important chapter in the entire book.**  
If you read only one chapter to start using Git effectively, **this is it**.

This chapter teaches you all the fundamental commands you will use every day: initializing repositories, tracking files, staging, committing, viewing history, working with remotes, tagging, and undoing mistakes.

---

## 📚 What You'll Learn

- How to get a Git repository (init & clone)
- The complete Git workflow (Working Directory → Staging Area → Repository)
- How to track, stage, and commit changes
- Viewing project history with `git log`
- Working with remote repositories (push, pull, fetch)
- Tagging releases
- Useful Git aliases

---

## 📊 Git File Lifecycle Diagram

```mermaid
graph TD
    A[Untracked] -->|git add| B[Staged]
    B -->|git commit| C[Committed]
    C -->|edit file| D[Modified]
    D -->|git add| B
Official Git Lifecycle Image:
<img src="https://git-scm.com/book/en/v2/images/lifecycle.png" alt="Git File Lifecycle">

🚀 Quick Start Commands
Bashgit init
git clone <url>
git status
git add .
git commit -m "Your message"
git push origin main


Next Chapter: 03-Git-Branching

Made with ❤️ for learning Git from Zero to Hero
