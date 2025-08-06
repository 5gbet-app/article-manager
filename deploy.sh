#!/bin/bash

# 文章管理模块部署脚本
echo "🚀 开始部署文章管理模块到GitHub Pages..."

# 检查是否在正确的目录
if [ ! -f "index.html" ] || [ ! -f "styles.css" ]; then
    echo "❌ 错误：请在article-manager-standalone目录中运行此脚本"
    exit 1
fi

# 检查git是否初始化
if [ ! -d ".git" ]; then
    echo "📁 初始化Git仓库..."
    git init
    git add .
    git commit -m "Initial commit: 文章管理模块"
    echo "✅ Git仓库已初始化"
else
    echo "📝 更新Git仓库..."
    git add .
    git commit -m "Update: 文章管理模块更新"
fi

# 检查远程仓库
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "🔗 请先添加远程仓库："
    echo "   git remote add origin https://github.com/yourusername/article-manager.git"
    echo "   然后重新运行此脚本"
    exit 1
fi

# 推送到GitHub
echo "📤 推送到GitHub..."
git branch -M main
git push -u origin main

echo "✅ 部署完成！"
echo "🌐 你的应用将在几分钟后可用："
echo "   https://yourusername.github.io/article-manager"
echo ""
echo "📋 部署检查清单："
echo "   ✅ 代码已推送到GitHub"
echo "   ⏳ 等待GitHub Pages自动部署"
echo "   🔧 确保在仓库设置中启用了GitHub Pages"
echo "   📱 测试移动端和桌面端显示" 