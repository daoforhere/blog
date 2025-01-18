---
title: Markdown 语法测试
published: 2025-01-18
description: 测试 Fuwari 主题支持的各种 Markdown 扩展语法
tags:
  - Markdown
  - 测试
  - Fuwari
category: 测试
draft: true
---

# Markdown 扩展语法测试

这篇文章展示了 Fuwari 主题支持的各种扩展语法。

## 1. GitHub 仓库卡片

下面是一个 GitHub 仓库卡片的例子：

::github{repo="saicaca/fuwari"}

## 2. 提示框（Admonitions）

### 2.1 基础提示框

:::note
这是一个基础的提示框。
适合放一些需要用户注意的信息。
:::

:::tip
这是一个技巧提示框。
适合放一些对用户有帮助的建议。
:::

:::important
这是一个重要信息提示框。
适合放一些用户必须了解的关键信息。
:::

:::warning
这是一个警告提示框。
适合放一些需要用户特别注意的风险信息。
:::

:::caution
这是一个警示提示框。
适合放一些可能导致负面后果的操作警告。
:::

### 2.2 自定义标题的提示框

:::note[自定义标题]
这是一个带有自定义标题的提示框。
你可以给提示框加上任何你想要的标题。
:::

:::tip[小技巧]
像这样，给技巧提示框一个更友好的标题。
:::

## 3. 引用块中的 Markdown

> ### 这是引用块中的标题
> 在引用块中，你依然可以使用其他 Markdown 语法：
> - 列表项 1
> - 列表项 2
> 
> 甚至可以嵌套代码块：
> ```python
> print("Hello, Fuwari!")
> ```

## 4. 代码块

你可以使用代码块来展示各种编程语言的代码：

```python
def hello_fuwari():
    print("Hello, Fuwari!")
    return "欢迎使用 Fuwari 主题！"
```

```javascript
function helloFuwari() {
    console.log("Hello, Fuwari!");
    return "欢迎使用 Fuwari 主题！";
}
```

## 5. 表格

标准的 Markdown 表格：

| 功能 | 语法 | 说明 |
|:--|:--:|--:|
| GitHub 卡片（左对齐） | `::github{repo="用户名/仓库名"}` | 显示 GitHub 仓库信息 |
| 提示框（居中对齐） | `:::type[标题]` | 添加各种类型的提示框 |
| 代码块（右对齐） | ````语言` | 支持语法高亮 |

对齐方式说明：
- `:--|` 左对齐（第一列）
- `:--:` 居中对齐（第二列）
- `--:` 右对齐（第三列）

> 注意：标准 Markdown 不支持直接设置行高和列宽。如果你需要更复杂的表格样式，建议：
> 1. 使用 HTML 表格语法
> 2. 配合自定义 CSS 样式

下面是一个使用 HTML 和样式的表格示例：

<table style="width: 100%;">
  <tr style="height: 50px;">
    <th style="width: 20%;">功能</th>
    <th style="width: 50%;">语法</th>
    <th style="width: 30%;">说明</th>
  </tr>
  <tr style="height: 80px;">
    <td>GitHub 卡片</td>
    <td><code>::github{repo="用户名/仓库名"}</code></td>
    <td>显示 GitHub 仓库信息</td>
  </tr>
</table>

## 6. 图片和链接

这是一个图片链接的例子：

![示例图片](https://source.unsplash.com/random/800x400?markdown)

这是一个普通链接：[访问 Fuwari 的 GitHub 仓库](https://github.com/saicaca/fuwari)


两张图：
![PixPin_2025-01-18_12-44-20.png](https://blogimage.daofor.me/PicGo/PixPin_2025-01-18_12-44-20.png)


![PixPin_2025-01-18_12-44-20.png](https://blogimage.daofor.me/PicGo/Pasted image 20241206064129.png)
![](https://img1.baidu.com/it/u=3729021295,2822523688&fm=253&fmt=auto&app=138&f=JPEG?w=667&h=500)

![]()

![](https://blogimage.daofor.me/PicGo/Pasted image 20241230214713.png)


![](https://blogimage.daofor.me/PicGo/PixPin_2025-01-18_12-44-20.png)