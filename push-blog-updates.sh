#!/bin/bash

# Delvir Blog Update - GitHub Push Script
# Location: /Users/admin/Documents/delV-main/push-blog-updates.sh
# Make executable: chmod +x push-blog-updates.sh

echo "🚀 Starting Delvir blog update..."

# Navigate to project directory
cd /Users/admin/Documents/delV-main

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "❌ Error: Not a git repository"
    exit 1
fi

# Show current status
echo "📊 Current status:"
git status --short

# Add all blog-related changes
echo "📝 Adding changes..."
git add blog/articles/*.html
git add blog/index.html

# Check if there are changes to commit
if git diff --cached --quiet; then
    echo "ℹ️  No changes to commit"
    exit 0
fi

# Commit with timestamp
COMMIT_MSG="Daily blog update: $(date +%Y-%m-%d)"
echo "💾 Committing: $COMMIT_MSG"
git commit -m "$COMMIT_MSG"

# Push to GitHub
echo "⬆️  Pushing to GitHub..."
git push origin master

# Check if push was successful
if [ $? -eq 0 ]; then
    echo "✅ Blog updates pushed to GitHub successfully!"
    echo "🌐 Changes will be live shortly"
else
    echo "❌ Push failed. Check your GitHub authentication."
    echo "💡 Try: git config credential.helper store"
    exit 1
fi
