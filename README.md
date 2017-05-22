Syntastic plugin for esverify
=============================

Enables program verification with inline error messages with [esverify](https://github.com/levjj/esverify).

Requires [Syntastic](https://github.com/vim-syntastic/syntastic).

Installation
------------

First, install `esverify` globally:

    npm install -g esverify

The plugin itself can be installed with Pathogen or Vundle.
For Vundle, add the following configuration to your vimrc:

    Plugin 'levjj/esverify-vim'
    let g:syntastic_javascript_checkers=['esverify']

