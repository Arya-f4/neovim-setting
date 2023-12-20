return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
    },
  },
  -- Buffer line
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next Tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev Tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },
  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "solarized_dark",
      },
    },
  },
  -- Logo
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[ 
                                                  
                                                  
                                                  
                                                  
    :~:                                     .~^   
    :!?7^.                               .:7JY^   
    :7#BYJ!^.                          :^?YB#5^   
    :7B###BGY~:                     :~?55B###5^   
    :7B######G57~.               .:7PBB#####BY^   
    .~YGGG######G7!:.          :!75B#####GGGJ~:   
       .:~YPPP####P?7:       :7?G####GPPY~^:.     
           .:~?J5B##GJ7.    !YB##GYJJ~:.          
               .:~?YJY?^.  ^?YYYJ~:.              
                       .. .:                      
                  .~!??~: .~JY7~:                 
                 .!G##5~.  ^5##P7^                
                .!Y#BPJ^   :JPB##J:               
               !YPG5?^:     .^?5PPY!.             
            .~YJY7~.           .:!?JY!.           
          .^~!!:                   :~!!~:         
        .^~^.                         .:^^.       
        ..                               ..       
    ╦ ╦╔═╗╦═╗╦  ╔╦╗╔═╗╔═╗╦  ╦╦╔═╗╦═╗
    ║║║║ ║╠╦╝║   ║║╚═╗╠═╣╚╗╔╝║║ ║╠╦╝
    ╚╩╝╚═╝╩╚═╩═╝═╩╝╚═╝╩ ╩ ╚╝ ╩╚═╝╩╚═
      ]]
      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },
}
