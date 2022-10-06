local groups = {}

---Get default highlight groups
---@param colors table<string, string> #table of colors
---@param transparent boolean #whether background is transparent or not
---@return table #list of configured highlighting groups
function groups.get(colors, transparent)
    return {
        Boolean = { fg = colors.cyan },
        Character = { fg = colors.yellow },
        Constant = { fg = colors.aqua },
        Float = { fg = colors.purple },
        Number = { fg = colors.purple },
        String = { fg = colors.yellow },

        StorageClass = { fg = colors.cyan },
        Structure = { fg = colors.cyan },
        Type = { fg = colors.aqua },
        Typedef = { fg = colors.aqua },

        Function = { fg = colors.green },
        Identifier = { fg = colors.green },

        Keyword = { fg = colors.cyan },
        Label = { fg = colors.pink },
        Operator = { fg = colors.pink },
        Statement = { fg = colors.pink },

        Define = { fg = colors.pink },
        Include = { fg = colors.pink },
        Macro = { fg = colors.green },
        PreCondit = { fg = colors.pink },
        PreProc = { fg = colors.green },

        Delimiter = { fg = colors.pink },
        Special = { fg = colors.purple },
        SpecialChar = { fg = colors.pink },
        SpecialComment = { fg = colors.cyan },
        Tag = { fg = colors.pink },

        Comment = { fg = colors.gray, italic = true },
        Todo = { fg = colors.orange, bold = true, italic = true },

        Error = { fg = colors.red },
        Ignore = { fg = colors.yellow },
        Underlined = { fg = colors.green, underline = true },

        ColorColumn = { bg = colors.dark_blue },
        Cursor = { fg = colors.bg, bg = colors.fg },
        CursorColumn = { bg = colors.vulcan },
        CursorLine = { bg = colors.vulcan },
        CursorLineNr = { fg = colors.fg },
        ErrorMsg = { fg = colors.red },
        FloatTitle = { fg = colors.pink },
        LineNr = { fg = colors.dark_gray },
        MatchParen = { bg = colors.dark_gray, bold = true },
        ModeMsg = { fg = colors.yellow },
        MoreMsg = { fg = colors.yellow },
        Nontext = { fg = colors.dark_gray },
        Normal = { fg = colors.fg, bg = transparent and colors.none or colors.bg },
        Question = { fg = colors.yellow },
        Search = { fg = colors.bg, bg = colors.yellow },
        SignColumn = {},
        StatusLine = { fg = colors.light_gray, bg = colors.black },
        StatusLineNC = { fg = colors.light_gray, bg = colors.dark_blue },
        Tabline = { fg = colors.fg, bg = colors.dark_blue, reverse = true },
        VertSplit = { fg = colors.fg },
        Visual = { bg = colors.dark_gray },
        WarningMsg = { fg = colors.yellow },

        Directory = { fg = colors.aqua },
        SpecialKey = { fg = colors.pink },
        Title = { fg = colors.yellow },

        -- treesitter
        TSAnnotation = { link = "PreProc" },
        TSAttribute = { link = "PreProc" },
        TSBoolean = { fg = colors.cyan },
        TSCharacter = { link = "Character" },
        TSCharacterSpecial = { link = "SpecialChar" },
        TSComment = { link = "Comment" },
        TSConditional = { link = "Conditional" },
        TSConstBuiltin = { fg = colors.aqua },
        TSConstMacro = { link = "Define" },
        TSConstant = { link = "Constant" },
        TSConstructor = { fg = colors.aqua },
        TSDanger = { link = "WarningMsg" },
        TSDebug = { link = "Debug" },
        TSDefine = { link = "Define" },
        TSEmphasis = { italic = true },
        TSEnvironment = { link = "Macro" },
        TSEnvironmentName = { link = "Type" },
        TSException = { link = "Exception" },
        TSField = { link = "Identifier" },
        TSFloat = { link = "Float" },
        TSFuncBuiltin = { fg = colors.green },
        TSFuncMacro = { link = "Macro" },
        TSFunction = { link = "Function" },
        TSInclude = { link = "Include" },
        TSKeyword = { fg = colors.cyan },
        TSKeywordFunction = { fg = colors.pink },
        TSKeywordOperator = { link = "Operator" },
        TSKeywordReturn = { fg = colors.pink },
        TSLabel = { link = "Label" },
        TSLiteral = { link = "String" },
        TSMath = { link = "Special" },
        TSMethod = { link = "Function" },
        TSNamespace = { link = "Include" },
        TSNone = {},
        TSNote = { link = "SpecialComment" },
        TSNumber = { link = "Number" },
        TSOperator = { link = "Operator" },
        TSParameter = { fg = colors.orange, italic = true },
        TSParameterReference = { link = "TSParameter" },
        TSPreProc = { link = "PreProc" },
        TSProperty = { link = "Identifier" },
        TSPunctBracket = { link = "Delimiter" },
        TSPunctDelimiter = { link = "Delimiter" },
        TSPunctSpecial = { link = "Delimiter" },
        TSRepeat = { link = "Repeat" },
        TSStorageClass = { link = "StorageClass" },
        TSStrike = { strikethrough = true },
        TSString = { link = "String" },
        TSStringEscape = { link = "SpecialChar" },
        TSStringRegex = { link = "String" },
        TSStringSpecial = { link = "SpecialChar" },
        TSStrong = { bold = true },
        TSSymbol = { link = "Identifier" },
        TSTag = { link = "Label" },
        TSTagAttribute = { link = "TSProperty" },
        TSTagDelimiter = { link = "Delimiter" },
        TSText = { link = "Normal" },
        TSTextReference = { link = "Constant" },
        TSTitle = { link = "Title" },
        TSTodo = { link = "Todo" },
        TSType = { fg = colors.aqua },
        TSTypeBuiltin = { fg = colors.aqua },
        TSTypeDefinition = { link = "Typedef" },
        TSTypeQualifier = { link = "Type" },
        TSURI = { fg = colors.aqua, undercurl = true },
        TSUnderline = { underline = true },
        TSVariableBuiltin = { fg = colors.pink },
        TSWarning = { fg = colors.yellow },

        -- treesitter rainbow
        rainbowcol1 = { fg = colors.dark_red },
        rainbowcol2 = { fg = colors.aqua },
        rainbowcol3 = { fg = colors.yellow },
        rainbowcol4 = { fg = colors.purple },
        rainbowcol5 = { fg = colors.dark_cyan },
        rainbowcol6 = { fg = colors.orange },
        rainbowcol7 = { fg = colors.green },

        -- diff
        DiffAdd = { fg = colors.green },
        DiffChange = { fg = colors.white },
        DiffDelete = { fg = colors.red },
        DiffText = { fg = colors.bg, bg = colors.cyan },
        diffAdded = { fg = colors.green },
        diffChanged = { fg = colors.white },
        diffFile = { fg = colors.white },
        diffIndexLine = { fg = colors.cyan },
        diffLine = { fg = colors.purple },
        diffRemoved = { fg = colors.pink },
        diffSubname = { fg = colors.cyan },

        -- fold
        FoldColumn = { bg = colors.dark_blue },
        Folded = { fg = colors.gray, bg = colors.dark_blue },

        -- popup menu
        Pmenu = { fg = colors.fg },
        PmenuSel = { fg = colors.bg, bg = colors.pink },
        PmenuThumb = { fg = colors.dark_green, bg = colors.dark_gray },

        -- lsp document highlight
        LspReferenceRead = { bg = colors.vulcan, bold = true },
        LspReferenceText = { bg = colors.vulcan, bold = true },
        LspReferenceWrite = { bg = colors.vulcan, bold = true },

        -- diagnostics
        DiagnosticError = { fg = colors.red },
        DiagnosticHint = { fg = colors.light_gray },
        DiagnosticInfo = { fg = colors.white },
        DiagnosticUnderlineError = { sp = colors.red, underline = true },
        DiagnosticUnderlineHint = { sp = colors.light_gray, underline = true },
        DiagnosticUnderlineInfo = { sp = colors.green, underline = true },
        DiagnosticUnderlineWarn = { sp = colors.yellow, underline = true },
        DiagnosticWarn = { fg = colors.yellow },

        -- vim-illuminate
        IlluminatedWordRead = { link = "LspReferenceRead" },
        IlluminatedWordText = { link = "LspReferenceText" },
        IlluminatedWordWrite = { link = "LspReferenceWrite" },

        -- nvim-lspconfig
        LspInfoBorder = { link = "FloatBorder" },
        LspInfoFiletype = { fg = colors.white },
        LspInfoList = { fg = colors.aqua },
        LspInfoTitle = { fg = colors.cyan },

        -- telescope
        TelescopeBorder = { link = "FloatBorder" },
        TelescopeNormal = { link = "Normal" },
        TelescopePromptCounter = { fg = colors.aqua },
        TelescopeTitle = { fg = colors.aqua },

        -- leap
        LeapBackdrop = { fg = colors.gray },
        LeapLabelPrimary = { fg = colors.dark_pink },
        LeapLabelSecondary = { fg = colors.dark_cyan },
        LeapMatch = { fg = colors.dark_pink, underline = true },

        -- sj
        SjLabel = { fg = colors.dark_pink },
        SjLimit = { link = "ErrorMsg" },
        SjOverlay = { link = "Comment" },
        SjSearch = { link = "IncSearch" },
        SjWarning = { link = "WarningMsg" },

        -- mason
        MasonError = { fg = colors.red },
        MasonHeader = { fg = colors.dark_green, bg = colors.cyan, bold = true },
        MasonHeaderSecondary = { fg = colors.dark_green, bg = colors.yellow, bold = true },
        MasonHeading = { fg = colors.white, bold = true },
        MasonHighlight = { fg = colors.aqua },
        MasonHighlightBlock = { fg = colors.dark_blue, bg = colors.cyan },
        MasonHighlightBlockBold = { fg = colors.dark_blue, bg = colors.cyan, bold = true },
        MasonHighlightBlockBoldSecondary = { fg = colors.dark_blue, bg = colors.yellow, bold = true },
        MasonHighlightBlockSecondary = { fg = colors.dark_blue, bg = colors.yellow },
        MasonHighlightSecondary = { fg = colors.yellow },
        MasonLink = { fg = colors.aqua },
        MasonMuted = { fg = colors.pink },
        MasonMutedBlock = { fg = colors.dark_blue, bg = colors.light_gray },
        MasonMutedBlockBold = { fg = colors.dark_blue, bg = colors.light_gray, bold = true },

        -- dashboard
        DashboardCenter = { fg = colors.pink },
        DashboardFooter = { fg = colors.aqua },
        DashboardHeader = { fg = colors.peanut },

        -- nvimtree
        NvimTreeBookmark = { fg = colors.yellow },
        NvimTreeEmptyFolderName = { link = "Directory" },
        NvimTreeExecFile = { fg = colors.yellow, bold = true },
        NvimTreeFolderIcon = { fg = colors.yellow },
        NvimTreeFolderName = { link = "Directory" },
        NvimTreeGitDeleted = { link = "DiffDelete" },
        NvimTreeGitDirty = { fg = colors.pink },
        NvimTreeGitIgnored = { link = "Comment" },
        NvimTreeGitMerge = { fg = colors.purple },
        NvimTreeGitNew = { link = "DiffAdd" },
        NvimTreeGitRenamed = { fg = colors.pink },
        NvimTreeGitStaged = { fg = colors.green },
        NvimTreeImageFile = { fg = colors.purple, bold = true },
        NvimTreeIndentMarker = { fg = colors.light_gray },
        NvimTreeLiveFilterPrefix = { fg = colors.pink, bold = true },
        NvimTreeLiveFilterValue = { bold = true },
        NvimTreeOpenedFile = { fg = colors.yellow, bold = true },
        NvimTreeOpenedFolderName = { link = "Directory" },
        NvimTreeRootFolder = { fg = colors.pink },
        NvimTreeSpecialFile = { fg = colors.green, bold = true, underline = true },
        NvimTreeSymlink = { fg = colors.pink, bold = true },
        NvimTreeWindowPicker = { fg = colors.white, bg = colors.aqua, bold = true },

        -- bufferline
        BufferLineDiagnostic = { fg = colors.dark_gray },
        BufferLineDiagnosticSelected = { fg = colors.light_gray, bold = true, italic = true },
        BufferLineDiagnosticVisible = { fg = colors.dark_gray },
        BufferLineErrorDiagnostic = { fg = colors.dark_gray, sp = colors.red },
        BufferLineErrorDiagnosticSelected = { fg = colors.red, sp = colors.red, bold = true, italic = true },
        BufferLineErrorDiagnosticVisible = { fg = colors.red },
        BufferLineHintDiagnostic = { fg = colors.dark_gray, sp = colors.light_gray },
        BufferLineHintDiagnosticSelected = {
            fg = colors.light_gray,
            sp = colors.light_gray,
            bold = true,
            italic = true,
        },
        BufferLineHintDiagnosticVisible = { fg = colors.light_gray },
        BufferLineIndicatorSelected = { fg = colors.aqua },
        BufferLineInfoDiagnostic = { fg = colors.dark_gray, sp = colors.green },
        BufferLineInfoDiagnosticSelected = { fg = colors.green, sp = colors.green, bold = true, italic = true },
        BufferLineInfoDiagnosticVisible = { fg = colors.green },
        BufferLineModified = { fg = colors.pink },
        BufferLineModifiedSelected = { fg = colors.pink },
        BufferLineModifiedVisible = { fg = colors.pink },
        BufferLineNumbers = { fg = colors.purple },
        BufferLineNumbersSelected = { fg = colors.purple },
        BufferLineNumbersVisible = { fg = colors.purple },
        BufferLineWarningDiagnostic = { fg = colors.dark_gray, sp = colors.yellow },
        BufferLineWarningDiagnosticSelected = { fg = colors.yellow, sp = colors.yellow, bold = true, italic = true },
        BufferLineWarningDiagnosticVisible = { fg = colors.yellow },

        -- whichkey
        WhichKey = { fg = colors.yellow },
        WhichKeySeparator = { fg = colors.pink },

        -- nvim-cmp
        CmpItemAbbrDeprecated = { fg = colors.light_gray, strikethrough = true },
        CmpItemAbbrMatch = { fg = colors.aqua },
        CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
        CmpItemKindClass = { fg = colors.pink },
        CmpItemKindConstant = { fg = colors.cyan },
        CmpItemKindConstructor = { link = "TSConstructor" },
        CmpItemKindEnum = { fg = colors.cyan },
        CmpItemKindEnumMember = { fg = colors.yellow },
        CmpItemKindEvent = { fg = colors.yellow },
        CmpItemKindField = { fg = colors.yellow },
        CmpItemKindFile = { fg = colors.white },
        CmpItemKindFolder = { link = "NvimTreeFolderIcon" },
        CmpItemKindFunction = { link = "Function" },
        CmpItemKindInterface = { fg = colors.pink },
        CmpItemKindKeyword = { fg = colors.white },
        CmpItemKindMethod = { link = "Function" },
        CmpItemKindModule = { fg = colors.pink },
        CmpItemKindOperator = { link = "Operator" },
        CmpItemKindProperty = { fg = colors.yellow },
        CmpItemKindStruct = { fg = colors.pink },
        CmpItemKindText = { fg = colors.white },
        CmpItemKindUnit = { fg = colors.light_orange },
        CmpItemKindValue = { fg = colors.white },
        CmpItemKindVariable = { fg = colors.cyan },

        -- nvim-semantic-token
        LspClass = { link = "TSConstructor" },
        LspComment = { link = "TSComment" },
        LspDeprecated = { fg = colors.light_gray, strikethrough = true },
        LspFunction = { link = "TSFunction" },
        LspMacro = { link = "TSFuncMacro" },
        LspMethod = { link = "TSMethod" },
        LspNamespace = { link = "TSNamespace" },
        LspNumber = { link = "TSNumber" },
        LspOperator = { link = "TSOperator" },
        LspParameter = { link = "TSParameter" },
        LspProperty = { link = "TSProperty" },
        LspRegexp = { link = "TSStringRegex" },
        LspString = { link = "TSString" },
        LspType = { link = "TSType" },
        LspTypeParameter = { link = "TSType" },

        -- nvim-navic
        NavicIconsArray = { link = "Type" },
        NavicIconsBoolean = { link = "Boolean" },
        NavicIconsClass = { link = "CmpItemKindClass" },
        NavicIconsConstant = { link = "CmpItemKindConstant" },
        NavicIconsConstructor = { link = "CmpItemKindConstructor" },
        NavicIconsEnum = { link = "CmpItemKindEnum" },
        NavicIconsEnumMember = { link = "CmpItemKindEnumMember" },
        NavicIconsEvent = { link = "CmpItemKindEvent" },
        NavicIconsField = { link = "CmpItemKindField" },
        NavicIconsFile = { link = "CmpItemKindFile" },
        NavicIconsFunction = { link = "CmpItemKindFunction" },
        NavicIconsInterface = { link = "CmpItemKindInterface" },
        NavicIconsKey = { link = "CmpItemKindValue" },
        NavicIconsMethod = { link = "CmpItemKindMethod" },
        NavicIconsModule = { link = "CmpItemKindModule" },
        NavicIconsNamespace = { link = "CmpItemKindModule" },
        NavicIconsNull = { link = "Constant" },
        NavicIconsNumber = { link = "Number" },
        NavicIconsObject = { link = "CmpItemKindProperty" },
        NavicIconsOperator = { link = "CmpItemKindOperator" },
        NavicIconsPackage = { link = "CmpItemKindModule" },
        NavicIconsProperty = { link = "CmpItemKindProperty" },
        NavicIconsString = { link = "String" },
        NavicIconsStruct = { link = "CmpItemKindStruct" },
        NavicIconsTypeParameter = { link = "CmpItemKindTypeParameter" },
        NavicIconsVariable = { link = "CmpItemKindVariable" },
        NavicSeparator = { fg = colors.aqua },
        NavicText = { link = "Normal" },

        -- indent-blankline
        IndentBlanklineIndent1 = { fg = colors.pink, nocombine = true },
        IndentBlanklineIndent2 = { fg = colors.yellow, nocombine = true },
        IndentBlanklineIndent3 = { fg = colors.green, nocombine = true },
        IndentBlanklineIndent4 = { fg = colors.cyan, nocombine = true },
        IndentBlanklineIndent5 = { fg = colors.aqua, nocombine = true },
        IndentBlanklineIndent6 = { fg = colors.purple, nocombine = true },

        -- crates
        CratesNvimError = { fg = colors.red },
        CratesNvimLoading = { fg = colors.purple },
        CratesNvimNoMatch = { fg = colors.pink },
        CratesNvimPopupEnabled = { fg = colors.green },
        CratesNvimPopupFeature = { fg = colors.aqua },
        CratesNvimPopupPreRelease = { fg = colors.cyan },
        CratesNvimPopupTitle = { fg = colors.purple },
        CratesNvimPopupTransitive = { fg = colors.pink },
        CratesNvimPopupUrl = { fg = colors.aqua },
        CratesNvimPopupVersion = { fg = colors.green },
        CratesNvimPopupYanked = { fg = colors.pink },
        CratesNvimPreRelease = { fg = colors.cyan },
        CratesNvimUpgrade = { fg = colors.yellow },
        CratesNvimVersion = { fg = colors.green },
        CratesNvimYanked = { fg = colors.red },

        -- notify
        NotifyDEBUGBody = { fg = colors.fg },
        NotifyDEBUGBorder = { fg = colors.purple },
        NotifyDEBUGIcon = { fg = colors.purple },
        NotifyDEBUGTitle = { fg = colors.purple },
        NotifyERRORBody = { fg = colors.fg },
        NotifyERRORBorder = { fg = colors.red },
        NotifyERRORIcon = { fg = colors.red },
        NotifyERRORTitle = { fg = colors.red },
        NotifyINFOBody = { fg = colors.fg },
        NotifyINFOBorder = { fg = colors.green },
        NotifyINFOIcon = { fg = colors.green },
        NotifyINFOTitle = { fg = colors.green },
        NotifyTRACEBody = { fg = colors.fg },
        NotifyTRACEBorder = { fg = colors.white },
        NotifyTRACEIcon = { fg = colors.white },
        NotifyTRACETitle = { fg = colors.white },
        NotifyWARNBody = { fg = colors.fg },
        NotifyWARNBorder = { fg = colors.yellow },
        NotifyWARNIcon = { fg = colors.yellow },
        NotifyWARNTitle = { fg = colors.yellow },

        -- java
        jpropertiesIdentifier = { fg = colors.pink },

        -- vim
        vimCommand = { fg = colors.pink },

        -- javascript
        jsArgsObj = { fg = colors.cyan },
        jsBuiltins = { fg = colors.cyan },
        jsDocTags = { fg = colors.cyan, italic = true },
        jsExceptions = { fg = colors.cyan },
        jsFuncArgRest = { fg = colors.purple, italic = true },
        jsFuncArgs = { fg = colors.orange, italic = true },
        jsFuncName = { fg = colors.green },
        jsFunctionKey = { fg = colors.green },
        jsFutureKeys = { fg = colors.cyan },
        jsPrototype = { fg = colors.cyan },
        jsStatic = { fg = colors.cyan },
        jsStorageClass = { fg = colors.cyan },
        jsSuper = { fg = colors.cyan },
        jsThis = { fg = colors.pink },

        -- typescript
        typescriptAmbientDeclaration = { fg = colors.pink },
        typescriptArrayMethod = { fg = colors.green },
        typescriptArrayStaticMethod = { fg = colors.green },
        typescriptArrowFuncArg = { fg = colors.orange, italic = true },
        typescriptAsyncFuncKeyword = { fg = colors.pink },
        typescriptBinaryOp = { fg = colors.pink },
        typescriptCall = { fg = colors.orange, italic = true },
        typescriptCastKeyword = { fg = colors.pink },
        typescriptDOMEventProp = { fg = colors.aqua },
        typescriptDestructureVariable = { fg = colors.aqua },
        typescriptEndColons = { fg = colors.fg },
        typescriptExport = { fg = colors.pink },
        typescriptFuncType = { fg = colors.orange, italic = true },
        typescriptFuncTypeArrow = { fg = colors.cyan },
        typescriptGlobal = { fg = colors.aqua },
        typescriptGlobalMethod = { fg = colors.green },
        typescriptImport = { fg = colors.pink },
        typescriptMember = { fg = colors.fg },
        typescriptModule = { fg = colors.cyan },
        typescriptNull = { fg = colors.cyan },
        typescriptObjectLabel = { fg = colors.green },
        typescriptOperator = { fg = colors.pink },
        typescriptPredefinedType = { fg = colors.cyan },
        typescriptPromiseMethod = { fg = colors.green },
        typescriptProp = { fg = colors.green },
        typescriptTypeReference = { fg = colors.aqua },
        typescriptVariable = { fg = colors.cyan },
        typescriptVariableDeclaration = { fg = colors.aqua },

        -- tsx
        tsxAttrib = { fg = colors.green },
        tsxTagName = { fg = colors.aqua },

        -- rust
        rustIdentifier = { fg = colors.aqua },
        rustKeyword = { fg = colors.pink },
        rustLet = { fg = colors.cyan },
        rustLifetime = { fg = colors.pink },
        rustModPath = { fg = colors.aqua },
        rustParamName = { fg = colors.orange, italic = true },
        rustSelf = { fg = colors.pink },
        rustSigil = { fg = colors.pink },
        rustType = { fg = colors.aqua },

        -- html
        htmlArg = { fg = colors.green },
        htmlEndTag = { fg = colors.fg },
        htmlSpecialChar = { fg = colors.purple },
        htmlTag = { fg = colors.fg },
        htmlTagName = { fg = colors.pink },

        -- xml
        xmlAttrib = { fg = colors.green },
        xmlEndTag = { fg = colors.pink },
        xmlTag = { fg = colors.pink },
        xmlTagName = { fg = colors.orange },

        -- css
        cssBraces = { fg = colors.fg },
        cssClassName = { fg = colors.green },
        cssClassNameDot = { fg = colors.pink },
        cssColor = { fg = colors.purple },
        cssCommonAttr = { fg = colors.pink },
        cssFunctionName = { fg = colors.cyan },
        cssProp = { fg = colors.yellow },
        cssPseudoClassId = { fg = colors.purple },
        cssUIAttr = { fg = colors.yellow },
        cssURL = { fg = colors.orange, underline = true, italic = true },
        cssValueLength = { fg = colors.purple },
    }
end

return groups
