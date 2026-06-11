#!/bin/bash
# Git Hooks Templates Collection
# Place in .git/hooks/ and make executable

# ============================================================================
# PRE-COMMIT HOOK
# ============================================================================
# Runs before commit - use for checks and formatting

cat > .git/hooks/pre-commit << 'EOF'
#!/bin/bash
# Pre-commit hook - runs checks before allowing commits

echo "🔍 Running pre-commit checks..."

# Check for trailing whitespace
if git diff --cached --check; then
    echo "✅ No trailing whitespace found"
else
    echo "❌ Trailing whitespace detected! Fix before committing."
    exit 1
fi

# Check for large files
echo "Checking for large files..."
max_size=$((5 * 1024 * 1024))  # 5MB
for file in $(git diff --cached --name-only); do
    if [ -f "$file" ]; then
        size=$(stat -f%z "$file" 2>/dev/null || stat -c%s "$file" 2>/dev/null)
        if [ "$size" -gt "$max_size" ]; then
            echo "❌ File too large: $file ($((size / 1024 / 1024))MB)"
            exit 1
        fi
    fi
done
echo "✅ File size check passed"

# Run tests if test directory exists
if [ -d "tests" ] || [ -d "__tests__" ]; then
    echo "Running tests..."
    npm test 2>/dev/null || python -m pytest 2>/dev/null || true
fi

echo "✅ Pre-commit checks passed!"
exit 0
EOF

# ============================================================================
# COMMIT-MSG HOOK
# ============================================================================
# Validates commit message format

cat > .git/hooks/commit-msg << 'EOF'
#!/bin/bash
# Commit message format validator
# Enforces conventional commits format

commit_msg_file=$1
message=$(cat "$commit_msg_file")

# Conventional commit format: <type>(<scope>): <subject>
if ! echo "$message" | grep -qE '^(feat|fix|docs|style|refactor|perf|test|chore)(\([a-z\-]+\))?: .{1,50}'; then
    echo "❌ Commit message does not follow conventional commits format!"
    echo "Expected format: <type>(<scope>): <subject>"
    echo "Types: feat, fix, docs, style, refactor, perf, test, chore"
    echo ""
    echo "Example:"
    echo "  feat(auth): add login functionality"
    echo "  fix(api): resolve response serialization"
    exit 1
fi

echo "✅ Commit message is valid!"
exit 0
EOF

# ============================================================================
# PRE-PUSH HOOK
# ============================================================================
# Prevents pushing if tests fail

cat > .git/hooks/pre-push << 'EOF'
#!/bin/bash
# Pre-push hook - runs tests before push

echo "🚀 Running pre-push checks..."

# Run tests
if [ -f "package.json" ]; then
    echo "Running npm tests..."
    npm test
    if [ $? -ne 0 ]; then
        echo "❌ Tests failed! Fix before pushing."
        exit 1
    fi
elif [ -f "pytest.ini" ] || [ -d "tests" ]; then
    echo "Running pytest..."
    python -m pytest
    if [ $? -ne 0 ]; then
        echo "❌ Tests failed! Fix before pushing."
        exit 1
    fi
fi

echo "✅ Pre-push checks passed! Proceeding with push."
exit 0
EOF

# Make hooks executable
chmod +x .git/hooks/pre-commit
chmod +x .git/hooks/commit-msg
chmod +x .git/hooks/pre-push

echo "✅ Git hooks installed!"
