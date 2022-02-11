-- language specific higlights
local lush = require("lush")
local base = require("aura.base")
local styles = require("aura.settings").styles
local table_concat = table.concat

-- golang
local golang = lush(function()
  return {
    goDirective({ base.AuraPurpleFaded }),
    goConstants({ base.AuraPurple }),
    goDeclaration({ base.AuraRed }),
    goDeclType({ base.AuraBlue }),
    goBuiltins({ base.AuraOrange }),
  }
end)

-- java
local java = lush(function()
  return {
    javaAnnotation({ base.AuraBlue }),
    javaDocTags({ base.AuraPurpleFaded }),
    javaCommentTitle({ base.Comment }),
    javaParen({ base.AuraForeground }),
    javaParen1({ base.AuraForeground }),
    javaParen2({ base.AuraForeground }),
    javaParen3({ base.AuraForeground }),
    javaParen4({ base.AuraForeground }),
    javaParen5({ base.AuraForeground }),
    javaOperator({ base.AuraOrange }),
  }
end)

-- xml
local xml = lush(function()
  return {
    xmlTag({ base.AuraPurpleFadedBold }),
    xmlEndTag({ base.AuraPurpleFadedBold }),
    xmlTagName({ base.AuraBlue }),
    xmlEqual({ base.AuraBlue }),
    docbkKeyword({ base.AuraPurpleFadedBold }),
    xmlDocTypeDecl({ base.AuraGray }),
    xmlDocTypeKeyword({ base.AuraPurple }),
    xmlCdataStart({ base.AuraGray }),
    xmlCdataCdata({ base.AuraPurple }),
    dtdFunction({ base.AuraGray }),
    dtdTagName({ base.AuraPurple }),
    xmlAttrib({ base.AuraOrange }),
    xmlProcessingDelim({ base.AuraGray }),
    dtdParamEntityPunct({ base.AuraGray }),
    dtdParamEntityDPunct({ base.AuraGray }),
    xmlAttribPunct({ base.AuraGray }),
    xmlEntity({ base.AuraRed }),
    xmlEntityPunct({ base.AuraRed }),
  }
end)

local viml = lush(function()
  return {
    vimNotation({ base.AuraOrange }),
    vimBracket({ base.AuraOrange }),
    vimMapModKey({ base.AuraOrange }),
    vimFuncSID({ base.AuraForeground }),
    vimSetSep({ base.AuraForeground }),
    vimSep({ base.AuraForeground }),
    vimContinue({ base.AuraForeground }),
  }
end)

local c = lush(function()
  return {
    cOperator({ base.AuraPurple }),
    cppOperator({ base.AuraPurple }),
    cStructure({ base.AuraOrange }),
  }
end)

local python = lush(function()
  return {
    pythonBuiltin({ base.AuraOrange }),
    pythonBuiltinObj({ base.AuraOrange }),
    pythonBuiltinFunc({ base.AuraOrange }),
    pythonFunction({ base.AuraPurpleFaded }),
    pythonDecorator({ base.AuraRed }),
    pythonInclude({ base.AuraBlue }),
    pythonImport({ base.AuraBlue }),
    pythonRun({ base.AuraBlue }),
    pythonCoding({ base.AuraBlue }),
    pythonOperator({ base.AuraRed }),
    pythonException({ base.AuraRed }),
    pythonExceptions({ base.AuraPurple }),
    pythonBoolean({ base.AuraPurple }),
    pythonDot({ base.AuraForeground }),
    pythonConditional({ base.AuraRed }),
    pythonRepeat({ base.AuraRed }),
    pythonDottedName({ base.AuraGreenBold }),
  }
end)

local clojure = lush(function()
  return {
    clojureKeyword({ base.AuraBlue }),
    clojureCond({ base.AuraOrange }),
    clojureSpecial({ base.AuraOrange }),
    clojureDefine({ base.AuraOrange }),
    clojureFunc({ base.AuraOrange }),
    clojureRepeat({ base.AuraOrange }),
    clojureCharacter({ base.AuraPurpleFaded }),
    clojureStringEscape({ base.AuraPurpleFaded }),
    clojureException({ base.AuraRed }),
    clojureRegexp({ base.AuraPurpleFaded }),
    clojureRegexpEscape({ base.AuraPurpleFaded }),
    clojureParen({ base.AuraForeground }),
    clojureAnonArg({ base.AuraOrange }),
    clojureVariable({ base.AuraBlue }),
    clojureMacro({ base.AuraOrange }),
    clojureMeta({ base.AuraOrange }),
    clojureDeref({ base.AuraOrange }),
    clojureQuote({ base.AuraOrange }),
    clojureUnquote({ base.AuraOrange }),
    clojureRegexpCharClass({ fg = base.AuraForeground.fg.hex, gui = styles.bold }),
    clojureRegexpMod({ clojureRegexpCharClass }),
    clojureRegexpQuantifier({ clojureRegexpCharClass }),
  }
end)

local html = lush(function()
  return {
    htmlTag({ base.AuraPurpleFadedBold }),
    htmlEndTag({ base.AuraPurpleFadedBold }),
    htmlTagName({ base.AuraBlue }),
    htmlArg({ base.AuraOrange }),
    htmlScriptTag({ base.AuraPurple }),
    htmlTagN({ base.AuraForeground }),
    htmlSpecialTagName({ base.AuraBlue }),
    htmlSpecialChar({ base.AuraRed }),
    htmlLink({ fg = base.AuraForeground.fg.hex, gui = styles.underline }),
    htmlBold({ fg = base.AuraForeground.fg.hex, gui = styles.bold }),
    htmlBoldUnderline({
      fg = base.AuraForeground.fg.hex,
      gui = table_concat({ styles.bold, styles.underline }, ","),
    }),
    htmlBoldItalic({
      fg = base.AuraForeground.fg.hex,
      gui = table_concat({ styles.bold, styles.italic_strings }, ","),
    }),
    htmlBoldUnderlineItalic({
      fg = base.AuraForeground.fg.hex,
      gui = table_concat({ styles.bold, styles.italic_strings }, ","),
    }),
    htmlItalic({ fg = base.AuraForeground.fg.hex, gui = styles.italic_strings }),
  }
end)

local css = lush(function()
  return {
    cssBraces({ base.AuraBlue }),
    cssFunctionName({ base.AuraOrange }),
    cssIdentifier({ base.AuraOrange }),
    cssClassName({ base.AuraGreen }),
    cssColor({ base.AuraBlue }),
    cssSelectorOp({ base.AuraBlue }),
    cssSelectorOp2({ base.AuraBlue }),
    cssImportant({ base.AuraGreen }),
    cssVendor({ base.AuraForeground }),
    cssTextProp({ base.AuraPurpleFaded }),
    cssAnimationProp({ base.AuraPurpleFaded }),
    cssUIProp({ base.AuraOrange }),
    cssTransformProp({ base.AuraPurpleFaded }),
    cssTransitionProp({ base.AuraPurpleFaded }),
    cssPrintProp({ base.AuraPurpleFaded }),
    cssPositioningProp({ base.AuraOrange }),
    cssBoxProp({ base.AuraPurpleFaded }),
    cssFontDescriptorProp({ base.AuraPurpleFaded }),
    cssFlexibleBoxProp({ base.AuraPurpleFaded }),
    cssBorderOutlineProp({ base.AuraPurpleFaded }),
    cssBackgroundProp({ base.AuraPurpleFaded }),
    cssMarginProp({ base.AuraPurpleFaded }),
    cssListProp({ base.AuraPurpleFaded }),
    cssTableProp({ base.AuraPurpleFaded }),
    cssFontProp({ base.AuraPurpleFaded }),
    cssPaddingProp({ base.AuraPurpleFaded }),
    cssDimensionProp({ base.AuraPurpleFaded }),
    cssRenderProp({ base.AuraPurpleFaded }),
    cssColorProp({ base.AuraPurpleFaded }),
    cssGeneratedContentProp({ base.AuraPurpleFaded }),
  }
end)

local js = lush(function()
  return {
    javaScriptBraces({ base.AuraForeground }),
    javaScriptFunction({ base.AuraPurpleFaded }),
    javaScriptIdentifier({ base.AuraRed }),
    javaScriptMember({ base.AuraBlue }),
    javaScriptNumber({ base.AuraPurple }),
    javaScriptNull({ base.AuraPurple }),
    javaScriptParens({ base.AuraForeground }),
    javascriptImport({ base.AuraPurpleFaded }),
    javascriptExport({ base.AuraPurpleFaded }),
    javascriptClassKeyword({ base.AuraPurpleFaded }),
    javascriptClassExtends({ base.AuraPurpleFaded }),
    javascriptDefault({ base.AuraPurpleFaded }),
    javascriptClassName({ base.AuraOrange }),
    javascriptClassSuperName({ base.AuraOrange }),
    javascriptGlobal({ base.AuraOrange }),
    javascriptEndColons({ base.AuraForeground }),
    javascriptFuncArg({ base.AuraForeground }),
    javascriptGlobalMethod({ base.AuraForeground }),
    javascriptNodeGlobal({ base.AuraForeground }),
    javascriptBOMWindowProp({ base.AuraForeground }),
    javascriptArrayMethod({ base.AuraForeground }),
    javascriptArrayStaticMethod({ base.AuraForeground }),
    javascriptCacheMethod({ base.AuraForeground }),
    javascriptDateMethod({ base.AuraForeground }),
    javascriptMathStaticMethod({ base.AuraForeground }),
    javascriptProp({ base.AuraForeground }),
    javascriptURLUtilsProp({ base.AuraForeground }),
    javascriptBOMNavigatorProp({ base.AuraForeground }),
    javascriptDOMDocMethod({ base.AuraForeground }),
    javascriptDOMDocProp({ base.AuraForeground }),
    javascriptBOMLocationMethod({ base.AuraForeground }),
    javascriptBOMWindowMethod({ base.AuraForeground }),
    javascriptStringMethod({ base.AuraForeground }),
    javascriptVariable({ base.AuraOrange }),
    javascriptClassSuper({ base.AuraOrange }),
    javascriptFuncKeyword({ base.AuraPurpleFaded }),
    javascriptAsyncFunc({ base.AuraPurpleFaded }),
    javascriptClassStatic({ base.AuraOrange }),
    javascriptOperator({ base.AuraRed }),
    javascriptForOperator({ base.AuraRed }),
    javascriptYield({ base.AuraRed }),
    javascriptExceptions({ base.AuraRed }),
    javascriptMessage({ base.AuraRed }),
    javascriptTemplateSB({ base.AuraPurpleFaded }),
    javascriptTemplateSubstitution({ base.AuraForeground }),
    javascriptLabel({ base.AuraForeground }),
    javascriptObjectLabel({ base.AuraForeground }),
    javascriptPropertyName({ base.AuraForeground }),
    javascriptLogicSymbols({ base.AuraForeground }),
    javascriptArrowFunc({ base.AuraOrange }),
    javascriptDocParamName({ base.AuraForeground }),
    javascriptDocTags({ base.AuraForeground }),
    javascriptDocNotation({ base.AuraForeground }),
    javascriptDocParamType({ base.AuraForeground }),
    javascriptDocNamedParamType({ base.AuraForeground }),
    javascriptBrackets({ base.AuraForeground }),
    javascriptDOMElemAttrs({ base.AuraForeground }),
    javascriptDOMEventMethod({ base.AuraForeground }),
    javascriptDOMNodeMethod({ base.AuraForeground }),
    javascriptDOMStorageMethod({ base.AuraForeground }),
    javascriptHeadersMethod({ base.AuraForeground }),
    javascriptAsyncFuncKeyword({ base.AuraRed }),
    javascriptAwaitFuncKeyword({ base.AuraRed }),
    jsClassKeyword({ base.AuraPurpleFaded }),
    jsExtendsKeyword({ base.AuraPurpleFaded }),
    jsExportDefault({ base.AuraPurpleFaded }),
    jsTemplateBraces({ base.AuraPurpleFaded }),
    jsGlobalNodeObjects({ base.AuraBlue }),
    jsGlobalObjects({ base.AuraBlue }),
    jsObjectKey({ base.AuraGreenBold }),
    jsFunction({ base.AuraPurpleFaded }),
    jsFuncCall({ base.AuraBlue }),
    jsFuncParens({ base.AuraForeground }),
    jsParens({ base.AuraForeground }),
    jsNull({ base.AuraPurple }),
    jsUndefined({ base.AuraPurple }),
    jsClassDefinition({ base.AuraOrange }),
    jsOperatorKeyword({ base.AuraRed }),
  }
end)

local typescript = lush(function()
  return {
    typescriptReserved({ base.AuraPurpleFaded }),
    typescriptLabel({ base.AuraPurpleFaded }),
    typescriptFuncKeyword({ base.AuraPurpleFaded }),
    typescriptIdentifier({ base.AuraOrange }),
    typescriptBraces({ base.AuraOrange }),
    typescriptEndColons({ base.AuraForeground }),
    typescriptDOMObjects({ base.AuraForeground }),
    typescriptAjaxMethods({ base.AuraForeground }),
    typescriptLogicSymbols({ base.AuraOrange }),
    typescriptDocSeeTag({ base.Comment }),
    typescriptDocParam({ base.Comment }),
    typescriptDocTags({ base.Comment }),
    typescriptGlobalObjects({ base.AuraForeground }),
    typescriptParens({ base.AuraOrange }),
    typescriptOpSymbols({ base.AuraOrange }),
    typescriptHtmlElemProperties({ base.AuraForeground }),
    typescriptNull({ base.AuraPurple }),
    typescriptInterpolationDelimiter({ base.AuraPurpleFaded }),
    typescriptArrowFunc({ base.AuraForeground }),
    typescriptCharacter({ base.AuraOrange }),
    typescriptUnion({ base.AuraOrange }),
    typescriptDotNotation({ base.AuraOrange }),
    typescriptGlobalObjectDot({ typescriptDotNotation }),
  }
end)

local jsx = lush(function()
  return {
    jsxTagName({ base.AuraPurpleFaded }),
    jsxComponentName({ base.AuraGreen }),
    jsxCloseString({ base.AuraForeground }),
    jsxAttrib({ base.AuraOrange }),
    jsxEqual({ base.AuraPurpleFaded }),
  }
end)

local purescript = lush(function()
  return {
    purescriptModuleKeyword({ base.AuraPurpleFaded }),
    purescriptModuleName({ base.AuraForeground }),
    purescriptWhere({ base.AuraPurpleFaded }),
    purescriptDelimiter({ base.AuraForeground }),
    purescriptType({ base.AuraForeground }),
    purescriptImportKeyword({ base.AuraPurpleFaded }),
    purescriptHidingKeyword({ base.AuraPurpleFaded }),
    purescriptAsKeyword({ base.AuraPurpleFaded }),
    purescriptStructure({ base.AuraPurpleFaded }),
    purescriptOperator({ base.AuraBlue }),
    purescriptTypeVar({ base.AuraForeground }),
    purescriptConstructor({ base.AuraForeground }),
    purescriptFunction({ base.AuraForeground }),
    purescriptConditional({ base.AuraOrange }),
    purescriptBacktick({ base.AuraOrange }),
  }
end)

local coffeescript = lush(function()
  return {
    coffeeExtendedOp({ base.AuraForeground }),
    coffeeSpecialOp({ base.AuraForeground }),
    coffeeCurly({ base.AuraOrange }),
    coffeeParen({ base.AuraForeground }),
    coffeeBracket({ base.AuraOrange }),
  }
end)

local ruby = lush(function()
  return {
    rubyStringDelimiter({ base.AuraGreen }),
    rubyInterpolationDelimiter({ base.AuraPurpleFaded }),
  }
end)

local objc = lush(function()
  return { objcTypeModifier({ base.AuraRed }), objcDirective({ base.AuraBlue }) }
end)

local moonscript = lush(function()
  return {
    moonSpecialOp({ base.AuraForeground }),
    moonExtendedOp({ base.AuraForeground }),
    moonFunction({ base.AuraForeground }),
    moonObject({ base.AuraOrange }),
  }
end)

local elixir = lush(function()
  return {
    elixirDocString({ base.Comment }),
    elixirStringDelimiter({ base.AuraGreen }),
    elixirInterpolationDelimiter({ base.AuraPurpleFaded }),
    elixirModuleDeclaration({ base.AuraOrange }),
  }
end)

local scala = lush(function()
  return {
    scalaNameDefinition({ base.AuraForeground }),
    scalaCaseFollowing({ base.AuraForeground }),
    scalaCapitalWord({ base.AuraForeground }),
    scalaTypeExtension({ base.AuraForeground }),
    scalaKeyword({ base.AuraRed }),
    scalaKeywordModifier({ base.AuraRed }),
    scalaSpecial({ base.AuraPurpleFaded }),
    scalaOperator({ base.AuraForeground }),
    scalaTypeDeclaration({ base.AuraOrange }),
    scalaTypeTypePostDeclaration({ base.AuraOrange }),
    scalaInstanceDeclaration({ base.AuraForeground }),
    scalaInterpolation({ base.AuraPurpleFaded }),
  }
end)

local markdown = lush(function()
  return {
    markdownItalic({ fg = base.AuraForeground.fg.hex, gui = styles.italic }),
    markdownBold({ fg = base.AuraForeground.fg.hex, gui = styles.bold }),
    markdownBoldItalic({
      fg = base.AuraForeground.fg.hex,
      gui = table_concat({ styles.bold, styles.italic }, ","),
    }),
    markdownH1({ base.AuraGreenBold }),
    markdownH2({ markdownH1 }),
    markdownH3({ base.AuraOrangeBold }),
    markdownH4({ markdownH3 }),
    markdownH5({ base.AuraOrange }),
    markdownH6({ markdownH5 }),
    markdownCode({ base.AuraPurpleFaded }),
    markdownCodeBlock({ base.AuraPurpleFaded }),
    markdownCodeDelimiter({ base.AuraPurpleFaded }),
    markdownBlockquote({ base.AuraGray }),
    markdownListMarker({ base.AuraGray }),
    markdownOrderedListMarker({ base.AuraGray }),
    markdownRule({ base.AuraGray }),
    markdownHeadingRule({ base.AuraGray }),
    markdownUrlDelimiter({ base.AuraForeground }),
    markdownLinkDelimiter({ base.AuraForeground }),
    markdownLinkTextDelimiter({ base.AuraForeground }),
    markdownHeadingDelimiter({ base.AuraOrange }),
    markdownUrl({ base.AuraPurple }),
    markdownUrlTitleDelimiter({ base.AuraGreen }),
    markdownLinkText({ fg = base.AuraGray.fg.hex, gui = styles.underline }),
    markdownIdDeclaration({ markdownLinkText }),
  }
end)

local haskell = lush(function()
  return {
    haskellType({ base.AuraBlue }),
    haskellIdentifier({ base.AuraPurpleFaded }),
    haskellSeparator({ base.AuraForeground }),
    haskellDelimiter({ base.AuraOrange }),
    haskellOperators({ base.AuraPurple }),
    haskellBacktick({ base.AuraOrange }),
    haskellStatement({ base.AuraPurple }),
    haskellConditional({ base.AuraPurple }),
    haskellLet({ base.AuraRed }),
    haskellDefault({ base.AuraRed }),
    haskellWhere({ base.AuraRed }),
    haskellBottom({ base.AuraRedBold }),
    haskellImportKeywords({ base.AuraPurpleBold }),
    haskellDeclKeyword({ base.AuraOrange }),
    haskellDecl({ base.AuraOrange }),
    haskellDeriving({ base.AuraPurple }),
    haskellAssocType({ base.AuraPurpleFaded }),
    haskellNumber({ base.AuraPurpleFaded }),
    haskellPragma({ base.AuraRedBold }),
    haskellTH({ base.AuraPurpleFadedBold }),
    haskellForeignKeywords({ base.AuraGreen }),
    haskellKeyword({ base.AuraRed }),
    haskellFloat({ base.AuraPurpleFaded }),
    haskellInfix({ base.AuraPurple }),
    haskellQuote({ base.AuraGreenBold }),
    haskellShebang({ base.AuraOrangeBold }),
    haskellLiquid({ base.AuraPurpleBold }),
    haskellQuasiQuoted({ base.AuraBlueBold }),
    haskellRecursiveDo({ base.AuraPurple }),
    haskellQuotedType({ base.AuraRed }),
    haskellPreProc({ base.AuraForeground }),
    haskellTypeRoles({ base.AuraRedBold }),
    haskellTypeForall({ base.AuraRed }),
    haskellPatternKeyword({ base.AuraBlue }),
  }
end)

local json = lush(function()
  return {
    jsonKeyword({ base.AuraGreen }),
    jsonQuote({ base.AuraGreen }),
    jsonBraces({ base.AuraForeground }),
    jsonString({ base.AuraForeground }),
  }
end)

local csharp = lush(function()
  return {
    csBraces({ base.AuraForeground }),
    csEndColon({ base.AuraForeground }),
    csLogicSymbols({ base.AuraForeground }),
    csParens({ base.AuraForeground }),
    csOpSymbols({ base.AuraForeground }),
    csInterpolationDelimiter({ base.AuraForeground }),
    csInterpolationAlignDel({ base.AuraPurpleFadedBold }),
    csInterpolationFormat({ base.AuraPurpleFaded }),
    csInterpolationFormatDel({ base.AuraPurpleFadedBold }),
  }
end)

local rust = lush(function()
  return {
    rustSigil({ base.AuraOrange }),
    rustEscape({ base.AuraPurpleFaded }),
    rustStringContinuation({ base.AuraPurpleFaded }),
    rustEnum({ base.AuraPurpleFaded }),
    rustStructure({ base.AuraPurpleFaded }),
    rustModPathSep({ base.AuraForeground }),
    rustCommentLineDoc({ base.AuraOrange }),
    rustCommentBlockDoc({ base.AuraOrange }),
    rustDefault({ base.AuraPurpleFaded }),
  }
end)

local ocaml = lush(function()
  return {
    ocamlOperator({ base.AuraForeground }),
    ocamlKeyChar({ base.AuraOrange }),
    ocamlArrow({ base.AuraOrange }),
    ocamlInfixOpKeyword({ base.AuraRed }),
    ocamlConstructor({ base.AuraOrange }),
  }
end)

local lua = lush(function()
  return {
    luaIn({ base.AuraRed }),
    luaFunction({ base.AuraPurpleFaded }),
    luaTable({ base.AuraOrange }),
  }
end)

local langs = lush.merge({
  golang,
  java,
  xml,
  viml,
  c,
  python,
  clojure,
  html,
  css,
  js,
  typescript,
  jsx,
  purescript,
  coffeescript,
  ruby,
  objc,
  moonscript,
  elixir,
  scala,
  markdown,
  haskell,
  json,
  csharp,
  rust,
  ocaml,
  lua,
})

return langs
