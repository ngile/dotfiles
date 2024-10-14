return {
  {
    "nvim-telescope/telescope-project.nvim",
    lazy = false,
    dependencies = {
      {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
      },
    },
    config = function()
      local project_actions = require("telescope._extensions.project.actions")
      require('telescope').setup {
        extensions = {
          project = {
            base_dirs = {
              '~/work/k8s/',
              {'~/work/python/'},
              {path = '~/work/ansible_work/', max_depth = 4},
            },
            hidden_files = true, -- default: false
            theme = "dropdown",
            order_by = "asc",
            search_by = "title",
            sync_with_nvim_tree = true, -- default false
            -- default for on_project_selected = find project files
            on_project_selected = function(prompt_bufnr)
              -- Do anything you want in here. For example:
              project_actions.change_working_directory(prompt_bufnr, false)
              -- require("harpoon.ui").nav_file(1)
            end
          }
        }
      }
    end,
  },
}
