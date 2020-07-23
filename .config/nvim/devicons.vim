let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '

" Prevent brackets around icons when sourcing vimrc
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif
