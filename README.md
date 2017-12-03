# mdtable-vim

![DEMO](https://github.com/ushumpei/mdtable-vim/blob/master/mdtable.gif)

## Description

Simple Vim plugin for inserting markdown table template.

## Installation

For dein.vim user, please add `call dein#add('ushumpei/mdtable-vim')` on your `.vimrc`.

## Usage

```
:Mdtable row_number col_number
```

i.e.

```vim
"input
:Mdtable 2 3

"output
|   |   |   |
|:--|:--|:--|
|   |   |   |
|   |   |   |
```

or

Type `mdt` and input row and column numbers.

The key mapping can be configured in your `.vimrc`.

```vim
  nmap newkeymapping <Plug>Mdtable
```

## Contributing

Wellcome! Please open a issue!

## License

[The Unlicense](https://github.com/ushumpei/mdtable-vim/blob/master/LICENSE)
