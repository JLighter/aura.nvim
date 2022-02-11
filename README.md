<h3 align="center">Aura Theme for Neovim</h3>
<img width="1552" alt="Aura Theme for Neovim" src="https://user-images.githubusercontent.com/41034356/153639835-8aa57a20-96b4-4d09-8436-d390560b7ad5.png">


# Usage

You can already clone this repository from your favorite package manager to neovim.

I personaly prefer Packer but i think it'll work on yours if you translate this command : 

```vim
use {'rktjmp/lush.nvim'}
use {'JLighter/aura.nvim'}
```

After installing the plugin, you can load aura like so:
```vim
" Vim Script
colorscheme aura
```

```lua
-- Lua
vim.cmd[[colorscheme aura]]
```

# Requirements

- Neovim 0.5 or greater required to use Lush as a development tool
- `lush.nvim` 

# Roadmap

- [x] Minimal theme 
- [x] Support [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
- [x] Support [Nvimtree](https://github.com/kyazdani42/nvim-tree.lua)  
- [ ] Support [Lualine](https://github.com/nvim-lualine/lualine.nvim)  
- [ ] Support [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [ ] Support common languages
- [ ] Support Neovim LSP
- [ ] Make it portable

# See Also

- [Lush](https://github.com/rktjmp/lush.nvim)

# Contributors
<table>
  <tr>
    <td align="center">
        <a href="https://github.com/JLighter">
          <img src="https://github.com/JLighter.png?size=100" align="center" />
        </a>
      <br />
      <sub><b>JLighter</b></sub>
    </td>
    <td align="center">
        <a href="https://github.com/kavinvalli">
          <img src="https://github.com/kavinvalli.png?size=100" align="center" />
        </a>
      <br />
      <sub><b>Kavin Valli</b></sub>
    </td>
  </tr>
</table>
