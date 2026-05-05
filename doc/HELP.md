# HELP.md - 使用指南

## 目录

1. [项目概述](#项目概述)
2. [快速开始](#快速开始)
3. [功能介绍](#功能介绍)
4. [使用方法](#使用方法)
5. [API 说明](#api说明)
6. [常见问题](#常见问题)

---

## 项目概述

**AI 编程助手**是一个基于 AI 的编程学习辅助平台，提供代码分析、调试、优化等全方位辅导服务。

### 主要功能

- 代码质量评估
- Bug 检测和修复
- 最佳实践建议
- 架构设计指导
- 学习进度追踪

---

## 快速开始

### 环境要求

- Python 3.8+
- Git
- 网络连接

### 安装步骤

1. **克隆仓库**
```bash
git clone https://github.com/lihuaok/elite20-starter-LH.git
cd elite20-starter-LH
```

2. **安装依赖**
```bash
pip install -r requirements.txt
```

3. **运行应用**
```bash
python app.py
```

---

## 功能介绍

### 1. 代码评阅 (Code Reviewer)

评估代码质量，提供详细的评分报告和改进建议。

### 2. Bug 检测 (Bug Finder)

发现代码中的潜在问题和边界情况处理。

### 3. 最佳实践 (Best Practice)

检查代码是否符合行业标准和最佳实践。

### 4. 架构指导 (Architecture Guide)

提供代码结构和模块化建议。

---

## 使用方法

### Web 界面

1. 打开浏览器访问 `http://localhost:8000`
2. 在输入框中粘贴代码
3. 选择编程语言
4. 点击"分析"按钮
5. 查看分析报告

### 命令行方式

```bash
python analyze.py --file example.py --language python --depth detailed
```

### API 调用

```bash
curl -X POST http://localhost:8000/api/analyze \
  -H "Content-Type: application/json" \
  -d '{
    "code": "def hello():\n    print(\"Hello World\")",
    "language": "python",
    "depth": "detailed"
  }'
```

---

## API 说明

### 接口列表

| 接口 | 方法 | 说明 |
|------|------|------|
| `/api/analyze` | POST | 代码分析 |
| `/api/review` | POST | 代码评阅 |
| `/api/bug-finder` | POST | Bug 检测 |
| `/api/best-practice` | POST | 最佳实践 |
| `/api/architecture` | POST | 架构分析 |

### 请求参数

| 参数 | 类型 | 说明 | 必填 |
|------|------|------|------|
| code | string | 代码内容 | 是 |
| language | string | 编程语言 | 是 |
| depth | string | 分析深度 | 否 |

### 响应格式

```json
{
  "score": 85,
  "dimensions": {
    "code_understanding": 90,
    "logic_analysis": 80,
    "debugging_techniques": 85,
    "best_practices": 85,
    "architecture_design": 80
  },
  "strengths": [],
  "improvements": [],
  "suggestions": [],
  "optimized_code": ""
}
```

---

## 常见问题

### Q1: 支持哪些编程语言？

**A**: 目前支持 Python、JavaScript、Java、Go、C++ 等主流编程语言。

### Q2: 如何提高分析准确性？

**A**: 
- 提供完整的代码上下文
- 指定正确的编程语言
- 选择合适的分析深度
- 提供相关的业务逻辑说明

### Q3: API 调用失败怎么办？

**A**: 
- 检查网络连接
- 确认 API Key 是否正确
- 检查请求格式是否正确
- 查看错误日志定位问题

### Q4: 分析结果可以导出吗？

**A**: 是的，支持导出为 JSON、Markdown、PDF 格式。

### Q5: 是否支持批量分析？

**A**: 支持批量上传多个文件进行分析。

---

## 技术支持

如有问题或建议，请通过以下方式联系：

- GitHub Issues: https://github.com/lihuaok/elite20-starter-LH/issues
- 邮箱: lihuaok@example.com

---

**版本**：v1.0
**最后更新**：2026-05-01