# 🚀 Chapter 1: Getting Started with Git

> “Everything you need to understand Git from zero to hero mindset.”

---

# 📘 What is Git?

Git is a **Distributed Version Control System (DVCS)** used to track changes in code over time.

Created by Linus Torvalds in 2005 for Linux development.

---

# 🌍 Why Git Exists?

Before Git:

- Files were copied manually ❌
- No history tracking ❌
- Hard collaboration ❌

With Git:

- Full history tracking ✅
- Safe collaboration ✅
- Easy rollback ✅
- Distributed system (everyone has full copy) ✅

---

# ⚙️ Types of Version Control Systems

## 1. Local VCS
- Stored on single computer
- Risk of data loss

## 2. Centralized VCS (CVCS)
Examples:
- SVN
- CVS

Problem:
- Single server failure breaks everything

## 3. Distributed VCS (Git)

Examples:
- Git
- Mercurial

Key Idea:
> Everyone has full repository copy

---

# 🧠 Core Git Concept (VERY IMPORTANT)

## Git is NOT like other tools

### Old systems:
- Store file differences

### Git:
- Stores SNAPSHOTS of entire project

👉 Every commit = full project snapshot

---

# ⚡ Why Git is Fast?

- Works locally
- No server dependency
- Instant operations

---

# 🔐 Git Integrity

Git uses SHA-1 hashing:

Example:
24b9da6552252987aa493b52f8696cd6d3b00373


Meaning:
- Every file is verified
- No silent corruption possible

---

# 📦 Git 3 States Model
Working Directory → Staging Area → Repository


## States:

- Modified → File changed
- Staged → Ready to commit
- Committed → Saved in Git history

---

# 🔁 Git Workflow
Edit → Add → Commit → Push


---

# 🧑‍💻 First Git Setup

```bash
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
Check config:

git config --list
🧠 Key Takeaways
Git = Distributed Version Control System

Stores snapshots, not differences

Every commit is permanent and safe

Works offline

Extremely fast and reliable
