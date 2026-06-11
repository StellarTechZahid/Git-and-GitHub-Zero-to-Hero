# Contributing Guidelines 🤝

Thank you for your interest in contributing to this learning resource!

## How to Contribute

### 1. Types of Contributions

- **Content Improvements**: Better explanations, more examples
- **New Topics**: Additional learning modules
- **Fixes**: Typos, broken links, corrections
- **Examples**: Code snippets and real-world examples
- **Projects**: New hands-on projects
- **Translations**: Content in other languages
- **Tools/Scripts**: Useful automation scripts

### 2. Getting Started

1. **Fork the repository**
   ```bash
   git clone https://github.com/YOUR-USERNAME/Git-and-GitHub-Zero-to-Hero.git
   cd Git-and-GitHub-Zero-to-Hero
   ```

2. **Create a feature branch**
   ```bash
   git checkout -b feature/your-contribution
   ```

3. **Make your changes**

4. **Commit with clear messages**
   ```bash
   git commit -m "Add: topic about X"
   ```

5. **Push to your fork**
   ```bash
   git push origin feature/your-contribution
   ```

6. **Create a Pull Request**

### 3. Commit Message Guidelines

Use conventional commits:

```
<type>: <subject>

<body>
<footer>
```

**Types:**
- `add`: New content
- `fix`: Bug fixes
- `docs`: Documentation
- `improve`: Improvements
- `style`: Formatting

**Examples:**
```bash
git commit -m "add: Git hooks tutorial with examples"
git commit -m "fix: Correct command syntax in merging guide"
git commit -m "improve: Better explanation of rebase workflow"
```

### 4. Content Guidelines

#### Writing Style
- Clear and concise
- Beginner-friendly
- Avoid jargon or explain it
- Include practical examples
- Add code snippets

#### Structure
```markdown
# Topic Title

## Overview
Brief introduction

## Concepts
- Explain what
- Explain why
- Explain when to use

## Practical Examples

### Example 1: Basic Usage
\`\`\`bash
command example
\`\`\`

### Example 2: Advanced Usage
\`\`\`bash
advanced example
\`\`\`

## Best Practices
- Do this
- Don't do that

## Common Mistakes
- Mistake 1 and how to avoid

## Further Reading
- Links to related topics
```

### 5. Code Examples

- Always test code before submitting
- Include comments for clarity
- Provide multiple difficulty levels
- Add expected output

```bash
# Example with comments
git commit -m "Initial commit"  # Creates a snapshot
```

### 6. File Naming

```
01-Fundamentals/
  ├── 01-Installation/
  │   └── README.md
  ├── 02-Configuration/
  │   └── README.md
  └── 03-Basic-Workflow/
      └── README.md
```

Use:
- Descriptive names
- Kebab-case for directories
- Numbers for ordering
- README.md for content

### 7. Pull Request Process

1. **Update your fork**
   ```bash
   git fetch upstream
   git rebase upstream/main
   ```

2. **PR Title**: Use clear, descriptive title
   ```
   Add: Complete Git Hooks Tutorial
   ```

3. **PR Description**: Include
   - What you added/changed
   - Why this contribution helps
   - Related issues
   - Screenshots/examples if applicable

4. **Wait for review**: Maintainers will review and provide feedback

5. **Make updates**: Address feedback in new commits

### 8. Quality Standards

Before submitting:

- [ ] Content is accurate and tested
- [ ] Spelling and grammar checked
- [ ] Links are working
- [ ] Code examples are tested
- [ ] Follows repository style
- [ ] Proper formatting
- [ ] Clear and helpful

### 9. Areas Needing Help

Currently looking for contributions in:

- [ ] Video tutorial links and summaries
- [ ] More DevOps examples
- [ ] Tools and scripts
- [ ] Interview questions and answers
- [ ] Real-world project examples
- [ ] GitHub Actions workflows
- [ ] Translations
- [ ] Case studies

### 10. Community Standards

- Be respectful
- Provide constructive feedback
- Help others learn
- Share knowledge generously
- Give credit where due

### 11. Questions?

- Open an issue for discussion
- Start a discussion
- Check existing issues first

## Recognition 🌟

All contributors will be:
- Listed in CONTRIBUTORS.md
- Credited in relevant sections
- Thanked in releases

## License

By contributing, you agree your contributions are licensed under MIT License.

---

**Thank you for making this learning resource better! 🙏**
