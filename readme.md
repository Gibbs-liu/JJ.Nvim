
3.0版本的vim：基于neovim、lua的新配置。
这个配置尽可能的：
1. 简单、方便多终端的迁移。
2. 尽量减少对系统需要安装的其他软件的需求。


# 项目地址
```
https://github.com/Gibbs-liu/JJ.Nvim
```

# 安装

## From Starting
```bash
0. 克隆配置
git clone https://github.com/Gibbs-liu/JJ.Nvim ~/.config/nvim

1. 安装neovim 0.9.x

2. 安装npm, nodejs
2.1 安装需要的pyright等，看报错提示
3. 安装ripgrep
brew install ripgrep
or
sudo apt install ripgrep

4. 打开nvim，剩下大部分都是自动的，看报错
5. Mason 安装需要的东西，看报错了
6. 系统内安装debugpy，看报错了
```

# 部分常用快捷键：
|快捷键|功能|
|---|---|
|\bb|打断点|
|f5|调试|
|\bv|到下一个断点|
|\a|代码结构|
|\ft|打开悬浮终端|
|\fw|搜词|
|\tt|telescope|
|\cc|注释|
|C-W+ HJKL|窗口管理|
|zc|折叠|
|zo|代开折叠|
|C-N|打开文件视图|
|(|跳转关键字，前向|
|)|跳转关键字，后向|
|]b/[b|buffer之间的跳转|
|]t/[t|tabs之间的跳转|

# 部分插件和功能

- lsp-nvim-server, mason : lsp相关
- cmp：代码补全
- nv-term: 浮动终端
- Aerial.nvim: 代码结构
- telescope：搜索
- treesitter：高亮、语义相关？好像是这个名字没写错？
- DAP：代码调试
```
./lua/custom/dap/*
```
- NvimTree:目录文件
- 其他再说

# TODO:
等用一用再看使用需要确定
1. 可能存在的bug？
2. C, C++ 的支持与调试
3. LSP可能在部分模式下还不行，而且不能跳转到库的内部文件中，可能需要coc
4. latex
5. luasnap没有配置




