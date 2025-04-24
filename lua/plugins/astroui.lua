-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  ---
  opts = {
    -- change colorscheme
    colorscheme = "astrodark",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal = { bg = "#000000" },
      },
      astrodark = { -- a table of overrides/changes when applying the astrotheme theme
        Search = { bold = true, fg = "#e5c06b", bg = "#3e4452" },
        IncSearch = { bold = true, fg = "#1e222a", bg = "#e5c06b" },
        FloatTitle = { bold = true, fg = "#61afef", bg = "#1e222a" },
        DiffDelete = { fg = "#1e222a", bg = "#e06c75" },
        DiffAdd = { fg = "#1e222a", bg = "#98c379" },
        DiffText = { fg = "#1e222a", bg = "#e5c06b" },
        StatusLine = { fg = "#abb2bf", bg = "#1a1c20" },
        WinBar = { fg = "#5c6370", bg = "#1e222a" },
        Normal = { fg = "#abb2bf", bg = "#1e222a" },
        Visual = { underline = false, bg = "#3e4452" },
        DiagnosticUnderlineError = { undercurl = true, sp = "#e06c75" },
        DiagnosticError = { bold = true, fg = "#ec5f67" },
        DiagnosticHint = { bold = true, fg = "#ebae34" },
        DiagnosticInfo = { bold = true, fg = "#c9c9c9" },
        DiagnosticWarn = { bold = true, fg = "#ff9640" },
        Comment = { bold = false, fg = "#777d86" },
        PmenuSel = { bold = true, bg = "#2c323c" },
        Title = { bold = true, fg = "#61afef" },
        MoreMsg = { bold = true, fg = "#98c379" },
        WinSeparator = { fg = "#2c323c" },
        TabLineFill = { bg = "#2c323c" },
        WarningMsg = { fg = "#ff9640" },
        Error = { fg = "#ec5f67" },
        Type = { fg = "#56b6c2" },
        LineNr = { fg = "#4b5263" },
        PmenuThumb = { bg = "#abb2bf" },
        DiagnosticUnderlineWarn = { undercurl = false },
        DiagnosticUnderlineInfo = { undercurl = false },
        DiagnosticUnderlineHint = { undercurl = false },
        SpellBad = { link = "DiagnosticUnderlineError" },
        SpellCap = { link = "SpellBad" },
        SpellLocal = { link = "SpellBad" },
        SpellRare = { link = "SpellBad" },
        FloatBorder = { link = "WinBar" },
        CursorLine = { link = "TabLineFill" },
        FoldColumn = { link = "Identifier" },
        NormalFloat = { link = "NeoTreeNormal" },
        Folded = { link = "LineNr" },
        LspInlayHint = { link = "LineNr" },
        CursorColumn = { link = "TabLineFill" },
        CurSearch = { link = "IncSearch" },
        Float = { link = "Number" },
        GitSignsAdd = { link = "String" },
        gitEmail = { link = "Comment" },
        gitEmailDelimiter = { link = "gitEmail" },
        NormalNC = { link = "Normal" },
        WinBarNC = { link = "WinBar" },
        MatchParen = { link = "Visual" },
        FileModified = { link = "Identifier" },

        -- Markup
        ["@markup.strong"] = { bold = true, fg = "#abb2bf" },
        ["@markup.italic"] = { italic = true, fg = "#abb2bf" },
        ["@markup.strikethrough"] = { strikethrough = true, fg = "#abb2bf" },
        ["@markup.link.url"] = { underline = true, fg = "#98c379" },
        ["@markup.heading.1.markdown"] = { bold = true, fg = "#c678dd" },
        ["@markup.heading.2.markdown"] = { bold = true, fg = "#61afef" },
        ["@markup.heading.3.markdown"] = { bold = true, fg = "#56b6c2" },
        ["@markup.heading.4.markdown"] = { bold = true, fg = "#98c379" },
        ["@markup.heading.5.markdown"] = { bold = true, fg = "#e5c06b" },
        ["@markup.heading"] = { link = "@markup.strong" },
        ["@markup.underline"] = { link = "Underline" },
        ["@markup.quote"] = { link = "Identifier" },
        ["@markup.math"] = { link = "Function" },
        ["@markup.environment"] = { link = "Number" },
        ["@markup.link"] = { link = "Constant" },
        ["@markup.link.label"] = { link = "Keyword" },
        ["@markup.raw"] = { link = "Identifier" },
        ["@markup.raw.block"] = { link = "Identifier" },
        ["@markup.list"] = { link = "Function" },
        ["@markup.list.unchecked"] = { link = "String" },
        ["@markup.list.checked"] = { link = "String" },

        -- Neo-tree
        NeoTreeTitleBar = { bold = true, fg = "#1a1c20", bg = "#61afef" },
        NeoTreeFloatBorder = { bold = true, fg = "#61afef", bg = "#1a1c20" },
        NeoTreeFloatNormal = { fg = "#abb2bf", bg = "#1a1c20" },
        NeoTreeWinSeparator = { fg = "#1a1c20", bg = "#1a1c20" },
        NeoTreeTabInactive = { fg = "#777777", bg = "#1a1c20" },
        NeoTreeTabSeparatorActive = { fg = "#61afef", bg = "#61afef" },
        NeoTreeIndentMarker = { fg = "#8094B4" },
        NeoTreeNormal = { link = "NeoTreeFloatNormal" },
        NeoTreeDotfile = { link = "Comment" },
        NeoTreeModified = { link = "Identifier" },
        NeoTreeFileStatsHeader = { link = "Comment" },
        NeoTreeFileStats = { link = "NeoTreeFileStatsHeader" },
        NeoTreeMessage = { link = "Comment" },
        NeoTreeNormalNC = { link = "NeoTreeNormal" },
        NeoTreeDotfiles = { link = "Comment" },
        NeoTreeTabActive = { link = "NeoTreeTitleBar" },
        NeoTreeTabSeparatorInactive = { link = "NeoTreeWinSeparator" },
        NeoTreeFileName = { link = "Identifier" },
        NeoTreeGitAdded = { link = "GitSignsAdd" },
        NeoTreeGitUntracked = { link = "NeoTreeFileName" },
        NeoTreeGitModified = { link = "Constant" },
        NeoTreeGitRenamed = { link = "NeoTreeGitModified" },
        NeoTreeGitStaged = { link = "NeoTreeGitAdded" },
        NeoTreeGitIgnored = { link = "NeoTreeDotfile" },
        NeoTreeGitDeleted = { link = "GitSignsDelete" },
        NeoTreeGitUnstaged = { link = "NeoTreeGitDeleted" },

        -- Status
        StatusNormal = { bg = "#61afef" },
        StatusInsert = { bg = "#98c379" },
        StatusVisual = { bg = "#c678dd" },
        StatusCommand = { bg = "#e5c06b" },
        StatusReplace = { bg = "#e06c75" },

        -- Todo comment
        TodoBgNOTE = { bold = true, fg = "#1e222a", bg = "#c9c9c9" },
        TodoBgWARN = { bold = true, fg = "#1e222a", bg = "#ff9640" },
        TodoBgFIX = { bold = true, fg = "#1e222a", bg = "#ec5f67" },
        TodoFgNOTE = { link = "DiagnosticInfo" },
        TodoSignNOTE = { link = "DiagnosticInfo" },
        TodoBgTEST = { link = "TodoBgNOTE" },
        TodoFgTEST = { link = "TodoFgNOTE" },
        TodoSignTEST = { link = "TodoSignNOTE" },
        TodoBgPERF = { link = "TodoBgNOTE" },
        TodoFgPERF = { link = "TodoFgNOTE" },
        TodoSignPERF = { link = "TodoSignNOTE" },
        TodoFgWARN = { link = "DiagnosticWarn" },
        TodoSignWARN = { link = "DiagnosticWarn" },
        TodoBgHACK = { link = "TodoBgWARN" },
        TodoFgHACK = { link = "TodoFgWARN" },
        TodoSignHACK = { link = "TodoSignWARN" },
        TodoFgFIX = { link = "DiagnosticError" },
        TodoSignFIX = { link = "DiagnosticError" },
        TodoBgTODO = { link = "SnacksPickerPreviewTitle" },
        TodoFgTODO = { link = "MoreMsg" },
        TodoSignTODO = { link = "MoreMsg" },

        -- Snacks
        SnacksPickerTitle = { bold = true, fg = "#1e222a", bg = "#61afef" },
        SnacksPickerPreviewTitle = { bold = true, fg = "#1e222a", bg = "#98c379" },
        SnacksDashboardKey = { bold = true, fg = "#d19a66" },
        SnacksPickerListCursorLine = { link = "PmenuSel" },
        SnacksIndent = { link = "LineNr" },
        SnacksIndentScope = { link = "SnacksIndent" },
        SnacksPicker = { link = "Normal" },
        SnacksPickerBorder = { link = "Identifier" },
        SnacksPickerPrompt = { link = "Function" },
        SnacksPickerTotals = { link = "Identifier" },
        SnacksPickerToggle = { link = "SnacksPickerTitle" },
        SnacksPickerDir = { link = "SnacksPickerBorder" },
        SnacksPickerFile = { link = "SnacksPickerBorder" },
        SnacksPickerMatch = { link = "BlinkCmpLabelMatch" },
        SnacksPickerGitDate = { link = "Number" },
        SnacksPickerGitType = { link = "Comment" },
        SnacksPickerGitCommit = { link = "Keyword" },
        SnacksDashboardDesc = { link = "@markup.strong" },

        -- Blink
        BlinkCmpLabelMatch = { bold = true, fg = "#cecece" },
        BlinkCmpLabel = { link = "Identifier" },
        BlinkCmpLabelDescription = { link = "Comment" },
        BlinkCmpSignatureHelp = { link = "Normal" },

        -- Neogit
        NeogitBranch = { bold = true, fg = "#c678dd" },
        NeogitPopupOptionKey = { link = "MoreMsg" },
        NeogitPopupSwitchKey = { link = "MoreMsg" },
        NeogitPopupActionKey = { link = "Whichkey" },
        NeogitSectionHeader = { link = "Title" },

        -- Which-key
        WhichKey = { link = "SnacksDashboardKey" },
        WhichKeyDesc = { link = "Identifier" },
        WhichKeyGroup = { link = "MoreMsg" },
        WhichKeySeparator = { link = "Comment" },

        -- Keywords and Operators
        ["@keyword"] = { link = "Keyword" },
        ["@keyword.function"] = { link = "Keyword" },
        ["@keyword.operator"] = { link = "Keyword" },
        ["@keyword.type.python"] = { link = "Keyword" },
        ["@operator"] = { link = "Operator" },
        ["@lsp.typemod.function.defaultLibrary.python"] = { link = "Function" },
        ["@lsp.type.namespace.python"] = { link = "Type" },

        -- Functions and Methods
        ["@function"] = { link = "Function" },
        ["@function.call"] = { link = "Function" },
        ["@function.builtin"] = { link = "Type" },
        ["@method"] = { link = "Function" },

        -- Variables, Constants, and Fields
        ["@variable"] = { link = "Identifier" },
        ["@variable.builtin"] = { link = "Type" },
        ["@variable.parameter"] = { link = "Removed" },
        ["@constant"] = { link = "Constant" },
        ["@constant.builtin"] = { link = "Constant" },
        ["@constant.builtin.python"] = { link = "Constant" },
        ["@field"] = { link = "Identifier" },

        -- Strings, Characters, and Escape Sequences
        ["@string"] = { link = "String" },
        ["@string.escape"] = { link = "Removed" },
        ["@string.special"] = { link = "Type" },
        ["@character"] = { link = "String" },

        -- Types and Classes
        ["@type"] = { link = "Number" },
        ["@type.builtin"] = { link = "Number" },
        ["@type.definition"] = { link = "Number" },
        ["@lsp.type.class.python"] = { link = "Type" },

        -- Numbers and Booleans
        ["@number"] = { link = "Number" },
        ["@boolean"] = { link = "Number" },

        -- Vim-illuminate
        IlluminatedWordText = { link = "Visual" },
        IlluminatedWordRead = { link = "IlluminatedWordText" },
        IlluminatedWordWrite = { link = "IlluminatedWordText" },

        -- Rainbow brackets
        RainbowDelimiterRed = { fg = "Gold" },
        RainbowDelimiterYellow = { fg = "Orchid" },
        RainbowDelimiterBlue = { fg = "LightSkyBlue" },
        RainbowDelimiterOrange = { fg = "Gold" },
        RainbowDelimiterGreen = { fg = "Orchid" },
        RainbowDelimiterViolet = { fg = "LightSkyBlue" },
        RainbowDelimiterCyan = { fg = "Orchid" },

        -- Mason
        MasonHighlightBlockBold = { link = "NeoTreeTitleBar" },
        MasonNormal = { link = "NeoTreeFloatNormal" },
        MasonHighlight = { link = "String" },
        MasonBackdrop = { link = "Normal" },
        MasonHeader = { link = "Title" },
        MasonHeading = { link = "Title" },
        MasonMuted = { link = "Removed" },

        -- Lazy
        LazyH1 = { link = "NeoTreeTitleBar" },
        LazyH2 = { link = "NeoTreeFloatBorder" },
        LazyButtonActive = { link = "NeoTreeTitleBar" },
        LazyValue = { link = "String" },
        LazyProp = { link = "LazyComment" },
        LazyCommit = { link = "Conditional" },
        LazyCommitType = { link = "MoreMsg" },
        LazyCommitScope = { link = "Conceal" },
        LazySpecial = { link = "Function" },
        LazyDir = { link = "Constant" },
        LazyUrl = { link = "Type" },
        LazyReasonCmd = { link = "String" },
        LazyReasonStart = { link = "Removed" },
        LazyReasonImport = { link = "Removed" },
        LazyReasonRequire = { link = "Type" },
        LazyReasonSource = { link = "Number" },
        LazyReasonEvent = { link = "Constant" },
        LazyReasonFt = { link = "Function" },
        LazyProgressDone = { link = "String" },
        LazyCommitIssue = { link = "Number" },

        -- Aerial
        AerialGuide = { link = "NeoTreeDotfile" },
        AerialLine = { link = "Constant" },

        MiniIconsAzure = { link = "Function" },
        MiniIconsBlue = { link = "Function" },
        MiniIconsCyan = { link = "Type" },
        MiniIconsGreen = { link = "String" },
        MiniIconsGrey = { link = "Identifier" },
        MiniIconsOrange = { link = "WarningMsg" },
        MiniIconsPurple = { link = "Keyword" },
        MiniIconsRed = { link = "Removed" },
        MiniIconsYellow = { link = "Constant" },

        DapUIBreakpointsCurrentLine = { link = "Constant" },
        DapUIWatchesValue = { link = "WarningMsg" },
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      DiagnosticError = "󰅙",
      DiagnosticWarn = "",
      DiagnosticInfo = "󰋼",
      DiagnosticHint = "󰌵",
      DapStopped = "",
      GitBranch = "",
    },
    status = {
      modes = {
        ["n"] = {
          "N",
          "normal",
        },
        ["no"] = {
          "N",
          "normal",
        },
        ["nov"] = {
          "N",
          "normal",
        },
        ["noV"] = {
          "N",
          "normal",
        },
        ["v"] = {
          "V",
          "visual",
        },
        ["Vs"] = {
          "V",
          "visual",
        },
        ["V"] = {
          "L",
          "visual",
        },
        ["\22"] = {
          "B",
          "visual",
        },

        ["c"] = {
          "C",
          "command",
        },
        ["cr"] = {
          "C",
          "command",
        },
        ["cv"] = {
          "C",
          "command",
        },
        ["cvr"] = {
          "C",
          "command",
        },

        ["i"] = {
          "I",
          "insert",
        },
        ["ic"] = {
          "I",
          "insert",
        },
        ["ix"] = {
          "I",
          "insert",
        },
        ["R"] = {
          "R",
          "replace",
        },
        ["Rc"] = {
          "R",
          "replace",
        },
        ["Rx"] = {
          "R",
          "replace",
        },
        ["Rv"] = {
          "R",
          "replace",
        },
        ["Rvc"] = {
          "R",
          "replace",
        },
        ["s"] = {
          "S",
          "visual",
        },
        ["S"] = {
          "S",
          "visual",
        },
        ["t"] = {
          "T",
          "terminal",
        },
      },
      separators = {
        breadcrumbs = "  ",
        path = "  ",
      },
      attributes = {
        buffer_active = { bold = false, italic = false },
        diagnostics = { bold = true },
        mode = { bold = true },
      },
      colors = {
        buffer_overflow_bg = "#2c323c",
        git_branch_fg = "#c678dd",
      },
    },
  },
}
