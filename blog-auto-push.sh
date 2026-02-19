#!/bin/bash

# Delvir Blog Auto-Push Script
# Reliable GitHub push automation

echo "🚀 Delvir Blog Auto-Push Starting..."

# Navigate to project
cd /Users/admin/Documents/delV-main || {
    echo "❌ Cannot access project directory"
    exit 1
}

# Verify git repository
if [ ! -d ".git" ]; then
    echo "❌ Not a git repository"
    exit 1
fi

# Stage all blog changes
echo "📝 Staging blog changes..."
git add blog/articles/*.html 2>/dev/null
git add blog/index.html 2>/dev/null

# Check for changes
if git diff --cached --quiet; then
    echo "ℹ️  No new changes to push"
    exit 0
fi

# Commit
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
git commit -m "Blog update: $TIMESTAMP" || {
    echo "❌ Commit failed"
    exit 1
}

# Push (using correct branch: main)
echo "⬆️  Pushing to GitHub..."
git push origin main || {
    echo "❌ Push failed"
    echo "💡 Check: git config credential.helper store"
    exit 1
}

echo "✅ Successfully pushed to GitHub!"
echo "🌐 Live at: https://delvir.co/blog"
exit 0
