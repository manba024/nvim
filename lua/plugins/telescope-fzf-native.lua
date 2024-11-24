return {
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-telescope/telescope-fzf-native.nvim" },
    config = function()
      -- 配置 telescope 插件
      require('telescope').setup {
        extensions = {
          fzf = {
            fuzzy = true,                    -- false 将只进行精确匹配
            override_generic_sorter = true,  -- 覆盖通用排序器
            override_file_sorter = true,     -- 覆盖文件排序器
            case_mode = "smart_case",        -- 或 "ignore_case" 或 "respect_case"
                                             -- 默认的 case_mode 是 "smart_case"
          }
        }
      }
      -- 为了使 fzf 与 telescope 一起加载并工作，需要在 setup 函数之后调用 load_extension：
      require('telescope').load_extension('fzf')
    end,
  },
}