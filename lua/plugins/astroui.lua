-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "astrodark",
    -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- Normal = { bg = "#000000" },
      },
      astrotheme = { -- a table of overrides/changes when applying the astrotheme theme
        -- Highlight groups are set to match the OG AstroNvim's theme

        -- Treesitter
        -- Markup
        ["@markup.strong"] = { fg = "#abb2bf", bold = true },
        ["@markup.italic"] = { fg = "#abb2bf", italic = true },
        ["@markup.strikethrough"] = { fg = "#abb2bf", strikethrough = true },
        ["@markup.underline"] = { link = "Underline" },
        ["@markup.heading"] = { fg = "#abb2bf", bold = true },
        ["@markup.heading.1.markdown"] = { fg = "#c678dd", bold = true },
        ["@markup.heading.2.markdown"] = { fg = "#61afef", bold = true },
        ["@markup.heading.3.markdown"] = { fg = "#56b6c2", bold = true },
        ["@markup.heading.4.markdown"] = { fg = "#98c379", bold = true },
        ["@markup.heading.5.markdown"] = { fg = "#e5c06b", bold = true },
        ["@markup.quote"] = { fg = "#abb2bf" },
        ["@markup.math"] = { fg = "#61afef" },
        ["@markup.environment"] = { fg = "#d19a66" },
        ["@markup.link"] = { fg = "#e5c06b" },
        ["@markup.link.label"] = { fg = "#c678dd" },
        ["@markup.link.url"] = { fg = "#98c379", underline = true },
        ["@markup.raw"] = { fg = "#abb2bf" },
        ["@markup.raw.block"] = { fg = "#abb2bf" },
        ["@markup.list"] = { fg = "#61afef" },
        ["@markup.list.unchecked"] = { fg = "#98c379" },
        ["@markup.list.checked"] = { fg = "#98c379" },
        -- Python
        ["@none.python"] = { fg = "#c678dd" },
        ["@variable.python"] = { fg = "#e06c75" },
        ["@variable.parameter.python"] = { fg = "#e06c75" },
        ["@operator.python"] = { fg = "#56b6c2" },
        ["@function.call.python"] = { fg = "#61afef" },
        ["@lsp.type.function.python"] = { fg = "#61afef" },
        ["@function.builtin.python"] = { fg = "#61afef" },
        ["@lsp.typemod.function.defaultLibrary.python"] = { fg = "#61afef" },
        ["@boolean.python"] = { fg = "#d19a66" },
        ["@string.escape.python"] = { fg = "#56b6c2" },
        ["@lsp.type.parameter.python"] = { fg = "#e06c75" },
        ["@type.python"] = { fg = "#abb2bf" },
        ["@constant.builtin.python"] = { fg = "#d19a66" },
        ["@constructor.python"] = { fg = "#61afef" },
        ["@lsp.type.typeParameter.python"] = { fg = "#e06c75" },
        ["@lsp.type.type.python"] = { fg = "#e5c06b" },
        ["@function.method.python"] = { fg = "#56b6c2" },
        ["@lsp.typemod.method.definition.python"] = { fg = "#56b6c2" },
        ["@variable.builtin.python"] = { fg = "#e5c06b" },
        ["@variable.member.python"] = { fg = "#e06c75" },
        -- C
        ["@variable.c"] = { fg = "#e06c75" },
        ["@operator.c"] = { fg = "#56b6c2" },
        ["@constant.c"] = { fg = "#56b6c2" },
        ["@string.escape.c"] = { fg = "#56b6c2" },
        ["@lsp.type.enumMember.c"] = { fg = "#56b6c2" },
        ["@type.builtin.c"] = { fg = "#c678dd" },
        ["@lsp.type.parameter.c"] = { fg = "#e06c75" },
        ["@lsp.typemod.variable.readonly.c"] = { fg = "#e06c75" },
        ["@lsp.type.operator.c"] = { fg = "#56b6c2" },
        ["@lsp.type.type.c"] = { fg = "#e5c06b" },
        ["@lsp.typemod.function.defaultLibrary.c"] = { fg = "#61afef" },
        -- Javascript
        ["@variable.javascript"] = { fg = "#e06c75" },
        ["@operator.javascript"] = { fg = "#56b6c2" },
        ["@variable.member.javascript"] = { fg = "#e5c06b" },
        ["@string.escape.javascript"] = { fg = "#56b6c2" },
        ["@lsp.type.parameter.javascript"] = { fg = "#e06c75" },
        ["@variable.builtin.javascript"] = { fg = "#e5c06b" },
        ["@function.builtin.javascript"] = { fg = "#61afef" },
        ["@boolean.javascript"] = { fg = "#d19a66" },
        ["@lsp.typemod.method.defaultLibrary.javascript"] = { fg = "#61afef" },
        -- CSS
        ["@number.css"] = { fg = "#d19a66" },
        ["@attribute.css"] = { fg = "#56b6c2" },
        ["@variable.css"] = { fg = "#e06c75" },
        ["@type.css"] = { fg = "#d19a66" },
        ["@property.css"] = { fg = "#abb2bf" },
        ["@keyword.operator.css"] = { fg = "#56b6c2" },
        -- HTML
        ["@none.html"] = { fg = "#abb2bf" },
        ["@tag.attribute.html"] = { fg = "#d19a66" },
        ["@markup.heading.html"] = { fg = "#abb2bf" },
        -- Punctuation
        ["@punctuation.bracket"] = { fg = "Gold" },

        --VS code themed cmp menu
        CmpItemKindConstructor = { fg = "#f28b25" },
        CmpItemKindUnit = { fg = "#D4D4D4" },
        CmpItemKindProperty = { fg = "#D4D4D4" },
        CmpItemKindKeyword = { fg = "#D4D4D4" },
        CmpItemKindMethod = { fg = "#C586C0" },
        CmpItemKindFunction = { fg = "#C586C0" },
        CmpItemKindColor = { fg = "#C586C0" },
        CmpItemKindText = { fg = "#9CDCFE" },
        CmpItemKindInterface = { fg = "#9CDCFE" },
        CmpItemKindVariable = { fg = "#9CDCFE" },
        CmpItemKindField = { fg = "#9CDCFE" },
        CmpItemKindValue = { fg = "#9CDCFE" },
        CmpItemKindEnum = { fg = "#9CDCFE" },
        CmpItemKindEnumMember = { fg = "#9CDCFE" },
        CmpItemKindStruct = { fg = "#9CDCFE" },
        CmpItemKindReference = { fg = "#9CDCFE" },
        CmpItemKindTypeParameter = { fg = "#9CDCFE" },
        CmpItemKindSnippet = { fg = "#D4D4D4" },
        CmpItemKindClass = { fg = "#f28b25" },
        CmpItemKindModule = { fg = "#D4D4D4" },
        CmpItemKindOperator = { fg = "#D4D4D4" },
        CmpItemKindConstant = { fg = "#D4D4D4" },
        CmpItemKindFile = { fg = "#D4D4D4" },
        CmpItemKindFolder = { fg = "#D4D4D4" },
        CmpItemKindEvent = { fg = "#D4D4D4" },
        CmpItemAbbrMatch = { fg = "#18a2fe", bold = true },
        CmpItemAbbrMatchFuzzy = { fg = "#18a2fe", bold = true },
        CmpItemMenu = { fg = "#777d86" },

        -- VS code themed aerial icons
        AerialArrayIcon = { fg = "" },
        AerialClassIcon = { fg = "#f28b25" },
        AerialConstantIcon = { fg = "#D4D4D4" },
        AerialConstructorIcon = { fg = "#f28b25" },
        AerialEnumIcon = { fg = "#9CDCFE" },
        AeiralEnumMember = { fg = "#9CDCFE" },
        AerialEventIcon = { fg = "#D4D4D4" },
        AerialFieldIcon = { fg = "#9CDCFE" },
        AerialFileIcon = { fg = "#D4D4D4" },
        AerialFunctionIcon = { fg = "#C586C0" },
        AerialInterfaceIcon = { fg = "#9CDCFE" },
        AerialKeyIcon = { fg = "#D4D4D4" },
        AerialMethodIcon = { fg = "#C586C0" },
        AerialModuleIcon = { fg = "#D4D4D4" },
        AerialNamespaceIcon = { fg = "#D4D4D4" },
        AerialNullIcon = { fg = "#D4D4D4" },
        AerialNumberIcon = { fg = "#D4D4D4" },
        AerialObjectIcon = { fg = "#f28b25" },
        AerialOperatorIcon = { fg = "#D4D4D4" },
        AerialPackageIcon = { fg = "#D4D4D4" },
        AerialPropertyIcon = { fg = "#D4D4D4" },
        AerialStringIcon = { fg = "#9CDCFE" },
        AerialStructIcon = { fg = "#f28b25" },
        AerialTypeParameter = { fg = "#9CDCFE" },
        AerialVariableIcon = { fg = "#9CDCFE" },
        AerialGuide = { fg = "#777d86" },

        -- Neo-tree
        NeoTreeIndentMarker = { fg = "#8094B4" },
        NeoTreeNormal = { bg = "#1a1c20" },
        NeoTreeNormalNC = { bg = "#1a1c20" },
        NeoTreeFloatBorder = { fg = "#61afef", bg = "#1a1c20" },
        NeoTreeFloatNormal = { fg = "#abb2bf", bg = "#1a1c20" },
        NeoTreeTitleBar = { fg = "#1a1c20", bg = "#61afef", bold = true },
        NeoTreeMessage = { fg = "#626262", italic = false },
        NeoTreeDotfiles = { fg = "#777777" },
        NeoTreeDotfile = { fg = "#777777" },
        NeoTreeWinSeparator = { fg = "#1a1c20", bg = "#1a1c20" },
        NeoTreeTabActive = { fg = "#1a1c20", bg = "#61afef", bold = true },
        NeoTreeTabInactive = { fg = "#777777", bg = "#1a1c20" },
        NeoTreeTabSeparatorActive = { fg = "#61afef", bg = "#61afef" },
        NeoTreeTabSeparatorInactive = { fg = "#1a1c20", bg = "#1a1c20" },
        NeoTreeGitModified = { fg = "#fc9c4e" },

        -- Lazy
        LazyNormal = { fg = "#abb2bf", bg = "#1a1c20" },
        LazyH1 = { fg = "#1a1c20", bg = "#61afef", bold = true },
        LazyH2 = { fg = "#61afef", bg = "#1a1c20", bold = true },
        LazyUrl = { fg = "#56b6c2", bg = "#1a1c20" },
        LazyReasonCmd = { fg = "#98c379", bg = "#1a1c20" },
        LazyReasonStart = { fg = "#e06c75", bg = "#1a1c20" },
        LazyReasonImport = { fg = "#e06c75", bg = "#1a1c20" },
        LazyReasonRequire = { fg = "#56b6c2", bg = "#1a1c20" },
        LazyReasonSource = { fg = "#d19a66", bg = "#1a1c20" },
        LazyProgressDone = { fg = "#98c379", bg = "#1a1c20" },

        -- Nvim-lsp
        DiagnosticError = { bold = true, fg = "#ec5f67" },
        DiagnosticHint = { bold = true, fg = "#ebae34" },
        DiagnosticInfo = { bold = true, fg = "#c9c9c9" },
        DiagnosticWarn = { bold = true, fg = "#ff9640" },
        DiagnosticUnderlineError = { sp = "#e06c75", undercurl = true },
        DiagnosticUnderlineWarn = { undercurl = false },
        DiagnosticUnderlineInfo = { undercurl = false },
        DiagnosticUnderlineHint = { undercurl = false },
        LspInlayHint = { fg = "#4b5263" },

        -- Rainbow brackets
        RainbowDelimiterRed = { fg = "Gold" },
        RainbowDelimiterYellow = { fg = "Orchid" },
        RainbowDelimiterBlue = { fg = "LightSkyBlue" },
        RainbowDelimiterOrange = { fg = "Gold" },
        RainbowDelimiterGreen = { fg = "Orchid" },
        RainbowDelimiterViolet = { fg = "LightSkyBlue" },
        RainbowDelimiterCyan = { fg = "Orchid" },

        -- Mason
        MasonNormal = { fg = "#abb2bf", bg = "#1a1c20" },
        MasonHeader = { fg = "#61afef", bg = "#1a1c20", bold = true },
        MasonHeading = { fg = "#61afef", bg = "#1a1c20", bold = true },
        MasonMuted = { fg = "#e06c75", bg = "#1a1c20" },
        MasonHighlight = { fg = "#98c379", bg = "#1a1c20" },
        MasonHighlightBlockBold = { fg = "#1a1c20", bg = "#61afef", bold = true },

        -- Nvim-native
        DiffDelete = { fg = "#1e222a", bg = "#e06c75" },
        DiffAdd = { fg = "#1e222a", bg = "#98c379" },
        DiffText = { fg = "#1e222a", bg = "#e5c06b" },
        NormalNC = { fg = "#abb2bf", bg = "#1e222a" },
        MoreMsg = { fg = "#98c379", bold = true },
        TabLineFill = { bg = "#2c323c" },

        -- Indent-blankline
        IndentBlanklineSpaceChar = { fg = "#3b4048" },
        IndentBlanklineChar = { fg = "#3b4048" },
        IndentBlanklineContextStart = { fg = "#5c5c5c" },
        IndentBlanklineContextChar = { fg = "#5c5c5c" },
        IndentBlanklineSpaceCharBlankline = { fg = "#3b4048" },

        -- Spellcheck
        SpellBad = { sp = "#ffbba6", undercurl = true },
        SpellCap = { sp = "#ffbba6", undercurl = true },
        SpellLocal = { sp = "#ffbba6", undercurl = true },
        SpellRare = { sp = "#ffbba6", undercurl = true },

        -- Vim-illuminate
        IlluminatedWordRead = { bg = "#3e4452", underline = false },
        IlluminatedWordText = { bg = "#3e4452", underline = false },
        IlluminatedWordWrite = { bg = "#3e4452", underline = false },

        -- Telescope
        TelescopePromptCounter = { fg = "#61afef" },
        TelescopeMatching = { fg = "#ebefea" },
        TelescopePreviewMatch = { fg = "#ebefea" },

        -- Which-key
        WhichKey = { fg = "#98c379", bg = "#1e222a" },
        WhichKeyBorder = { fg = "#777d86", bold = true },

        -- Window-picker
        WinBar = { fg = "#5c6370", bg = "#1e222a" },
        WinBarNC = { fg = "#5c6370", bg = "#1e222a" },
      },
    },
    -- Icons can be configured throughout the interface
    -- icons = {
    -- },
    status = {
      separators = {
        breadcrumbs = "  ",
        path = "  ",
      },
      attributes = {
        buffer_active = { bold = false, italic = false },
        diagnostics = { bold = true },
      },
      colors = {
        buffer_overflow_bg = "#2c323c",
      },
    },
  },
}
