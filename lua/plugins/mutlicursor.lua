return {
  {
    'mg979/vim-visual-multi',
    keys = {
      { '<C-d>', mode = {'n', 'x'}, desc = 'Multi-cursor select next' },
    },
    init = function()
      -- Minimal: just enable Ctrl+d like VS Code
      vim.g.VM_maps = {
        ['Find Under'] = '<C-d>',
        ['Find Subword Under'] = '<C-d>',
      }
    end
  }
}
