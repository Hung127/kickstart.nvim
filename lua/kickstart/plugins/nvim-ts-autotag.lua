-- plugins/ts-autotag.lua
return {
  'windwp/nvim-ts-autotag',
  event = 'VeryLazy', -- or "InsertEnter", or any event you prefer
  config = function()
    require('nvim-ts-autotag').setup {
      opts = {
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = false,
      },
      per_filetype = {
        ['html'] = {
          enable_close = false,
        },
      },
    }
  end,
}
