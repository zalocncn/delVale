#!/bin/bash

# DELVIR DAILY BLOG AUTOMATION - FULL WORKFLOW
# This script handles everything: blog creation, Cursor update, GitHub push
# Location: /Users/admin/Documents/delV-main/daily-blog-automation.sh
# Make executable: chmod +x daily-blog-automation.sh

set -e  # Exit on any error

echo "🚀 DELVIR DAILY BLOG AUTOMATION"
echo "================================"
echo ""

# Configuration
PROJECT_DIR="/Users/admin/Documents/delV-main"
BLOG_ARTICLES_DIR="$PROJECT_DIR/blog/articles"
DATE=$(date +%Y-%m-%d)
COMMIT_MSG="Daily blog update: $DATE - 10 new articles"

cd "$PROJECT_DIR" || exit 1

echo "📝 Step 1: Checking for new blog posts..."
NEW_POSTS=$(find "$BLOG_ARTICLES_DIR" -name "*.html" -mtime -1 | wc -l | tr -d ' ')

if [ "$NEW_POSTS" -eq 0 ]; then
    echo "⚠️  No new blog posts found from today."
    echo "💡 Make sure Claude has created the posts first."
    exit 1
fi

echo "✅ Found $NEW_POSTS new blog post(s)"
echo ""

echo "📊 Step 2: Checking Git status..."
git status --short
echo ""

echo "📦 Step 3: Staging changes..."
git add blog/articles/*.html
git add blog/index.html

echo ""
echo "💾 Step 4: Committing changes..."
git commit -m "$COMMIT_MSG" || {
    echo "ℹ️  No changes to commit (might be already committed)"
}

echo ""
echo "⬆️  Step 5: Pushing to GitHub..."
git push origin master || {
    echo "❌ Push failed!"
    echo "💡 Possible solutions:"
    echo "   1. Check internet connection"
    echo "   2. Verify GitHub credentials: git config --list"
    echo "   3. Try: git config credential.helper store"
    exit 1
}

echo ""
echo "✅ SUCCESS! Your daily blog update is complete!"
echo ""
echo "📊 Summary:"
echo "   - New posts added: $NEW_POSTS"
echo "   - Committed: $COMMIT_MSG"
echo "   - Pushed to: origin/master"
echo ""
echo "🌐 Your changes will be live on the website shortly!"
echo ""
echo "📈 Next steps:"
echo "   1. Visit your website to verify changes"
echo "   2. Check Google Analytics for traffic"
echo "   3. Run this script again tomorrow!"
