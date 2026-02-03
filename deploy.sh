#!/bin/bash
# 部署到 GitHub Pages

echo "🚀 开始部署..."

# 1. 创建 GitHub 仓库 (需要在网页创建)
echo "1. 请在 GitHub 创建仓库: https://github.com/new"
echo "   - Repository name: model-usage-card"
echo "   - 不要勾选 Add a README file"
echo "   - 点击 Create repository"
echo ""

# 2. 如果还没添加远程仓库
read -p "输入仓库地址 (直接回车跳过): " repo_url

if [ ! -z "$repo_url" ]; then
    git remote add origin "$repo_url"
fi

# 3. 推送到 GitHub
echo ""
echo "2. 推送到 GitHub..."
git push -u origin main

echo ""
echo "3. 启用 GitHub Pages:"
echo "   - 打开仓库 Settings"
echo "   - 左侧找到 Pages"
echo "   - Source 选择 'main' branch"
echo "   - 点击 Save"
echo ""
echo "4. 访问: https://diaoxiaoniu.github.io/model-usage-card/"
