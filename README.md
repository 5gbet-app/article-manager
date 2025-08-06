# 📝 文章管理模块 - 独立版本

一个功能完整的Markdown文章编辑器，可以部署到GitHub Pages上。

## 🚀 功能特性

- ✅ **完整的字段支持** - 支持所有高级Markdown字段
- ✅ **响应式设计** - 适配桌面和移动设备
- ✅ **实时预览** - 生成前可预览Markdown内容
- ✅ **文件下载** - 自动生成并下载.md文件
- ✅ **标签管理** - 动态添加和删除标签
- ✅ **图片管理** - 支持多个内容图片
- ✅ **键盘快捷键** - 提升操作效率

## 📋 支持的字段

### 基本信息
- `title` - 文章标题（必填）
- `date` - 发布日期（必填）
- `author` - 作者（必填）
- `views` - 浏览量
- `reading_time` - 阅读时间（分钟）

### 分类和描述
- `tags` - 标签数组（支持多个标签）
- `excerpt` - 文章摘要（必填）

### 图片管理
- `image_cover` - 封面图片URL
- `image_cover_alt` - 封面图片Alt文本
- `images` - 内容图片数组（支持多个图片）

### 多媒体内容
- `video_url` - 视频嵌入URL
- `game_url` - 游戏试玩URL
- `game_title` - 游戏标题
- `game_image` - 游戏封面图片

### 内容
- `content` - 文章内容（必填，支持Markdown格式）

## 🛠️ 部署到GitHub Pages

### 方法1：直接部署

1. **创建GitHub仓库**
   ```bash
   # 创建新仓库
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/yourusername/article-manager.git
   git push -u origin main
   ```

2. **启用GitHub Pages**
   - 进入仓库设置 (Settings)
   - 找到 "Pages" 选项
   - 选择 "Deploy from a branch"
   - 选择 "main" 分支和 "/ (root)" 文件夹
   - 点击 "Save"

3. **访问你的应用**
   - 等待几分钟后，访问 `https://yourusername.github.io/article-manager`

### 方法2：使用GitHub Actions（推荐）

1. **创建 `.github/workflows/deploy.yml`**
   ```yaml
   name: Deploy to GitHub Pages
   
   on:
     push:
       branches: [ main ]
   
   jobs:
     deploy:
       runs-on: ubuntu-latest
       steps:
       - uses: actions/checkout@v2
       
       - name: Deploy to GitHub Pages
         uses: peaceiris/actions-gh-pages@v3
         with:
           github_token: ${{ secrets.GITHUB_TOKEN }}
           publish_dir: .
   ```

2. **推送代码**
   ```bash
   git add .
   git commit -m "Add GitHub Actions workflow"
   git push
   ```

## 📁 文件结构

```
article-manager-standalone/
├── index.html          # 主页面
├── styles.css          # 样式文件
├── README.md           # 说明文档
└── .github/
    └── workflows/
        └── deploy.yml  # GitHub Actions配置
```

## 🎨 自定义样式

### 修改颜色主题

在 `styles.css` 中修改以下CSS变量：

```css
:root {
    --primary-color: #ffd700;      /* 主色调 */
    --secondary-color: #ffed4e;    /* 次要色调 */
    --background-start: #667eea;   /* 背景渐变开始 */
    --background-end: #764ba2;     /* 背景渐变结束 */
    --text-color: #f0f0f0;        /* 文本颜色 */
    --border-color: rgba(255, 215, 0, 0.3); /* 边框颜色 */
}
```

### 修改字体

```css
body {
    font-family: 'Your Font', 'Arial', sans-serif;
}
```

## ⌨️ 键盘快捷键

- `Ctrl + S` - 保存/生成Markdown文件
- `Ctrl + Enter` - 在标签输入框中添加标签

## 🔧 技术栈

- **HTML5** - 语义化标记
- **CSS3** - 现代化样式和动画
- **JavaScript** - 交互逻辑
- **Font Awesome** - 图标库
- **Google Fonts** - 字体库

## 📱 响应式设计

- 桌面端：完整功能展示
- 平板端：适配中等屏幕
- 移动端：优化触摸操作

## 🌐 浏览器兼容性

- Chrome 60+
- Firefox 55+
- Safari 12+
- Edge 79+

## 🚀 性能优化

- 使用CDN加载外部资源
- 压缩CSS和JavaScript
- 图片懒加载
- 响应式图片

## 📄 许可证

MIT License - 可自由使用和修改

## 🤝 贡献

欢迎提交Issue和Pull Request！

## 📞 支持

如有问题，请创建GitHub Issue。

---

**文章管理模块** - 让内容创作更简单！ 🎉 # article-manager
