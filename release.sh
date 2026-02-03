#!/bin/bash
set -e
cd "$(dirname "$0")"
VERSION=$(grep -m1 "Version:" meta.php | sed 's/.*Version:[[:space:]]*//' | tr -d '[:space:]')
TAG="v$VERSION"
echo "🚀 Releasing Meta Content $TAG"
sed -i '' "s/^Stable tag:.*/Stable tag: $VERSION/" readme.txt
git add -A && git commit -m "Release $TAG" || true
git tag -a "$TAG" -m "Release $TAG" 2>/dev/null || git tag -d "$TAG" && git tag -a "$TAG" -m "Release $TAG"
git push origin main --tags
/opt/homebrew/bin/gh release create "$TAG" --title "Meta Content $TAG" --notes "Release $TAG" --latest 2>/dev/null || true
echo "✅ Released $TAG"
