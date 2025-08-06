#!/bin/bash

# 文章管理模块本地启动脚本
echo "🚀 启动文章管理模块本地服务器..."

# 检查Python版本
if command -v python3 &> /dev/null; then
    PYTHON_CMD="python3"
elif command -v python &> /dev/null; then
    PYTHON_CMD="python"
else
    echo "❌ 错误：未找到Python，请安装Python 3.x"
    exit 1
fi

# 检查是否在正确的目录
if [ ! -f "index.html" ] || [ ! -f "styles.css" ]; then
    echo "❌ 错误：请在article-manager-standalone目录中运行此脚本"
    exit 1
fi

echo "✅ 在浏览器中打开："
echo "   http://localhost:8000"
echo ""
echo "📋 可用页面："
echo "   - http://localhost:8000/          (主编辑器)"
echo "   - http://localhost:8000/test.html (测试页面)"
echo ""
echo "🛑 按 Ctrl+C 停止服务器"
echo ""

# 启动HTTP服务器
$PYTHON_CMD -m http.server 8000 