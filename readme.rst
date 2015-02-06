########################
RST Quick Start Tutorial
########################

:Authors: pgeorgiadis

:Version: 1.0 of 02/05/2015


Overview
========

Here's a list of plugins we are going to install and configure

1. Vundle - https://github.com/gmarik/Vundle.vim
2. RIV - https://github.com/Rykka/riv.vim
3. InstantRST - https://github.com/Rykka/InstantRst
4. InstantRST Server - https://github.com/rykka/instant-rst.py
5. Rhythm css - https://github.com/Rykka/rhythm.css

Also, we are going to use put some magic in ``.vimrc`` file
by following the guideliens of
PuCon 2012 talk - https://github.com/mbrochh/vim-as-a-python-ide .

Download my configuration
-------------------------
I use Vundle as the tool that helps me to install all the plugins I need
in very simple way.

1. Requirements
  
.. code-block:: bash

   zypper install python-devel curl git
   sudo pip install https://github.com/Rykka/instant-rst.py/archive/master.zip


2. Installation
   
   2.1 Automatic installation

   Just copy and paste the following command in your terminal
   and it will do all the work for you. Just make sure you have
   installed all the requirements from above.

   Type: ``curl http://bit.ly/1DCKEn6 -L -o - | sh``


   2.2 Manual Installation

..  code-block:: bash

   git clone https://github.com/drpaneas/vimrst.git
   cd vimrst
   cp .vimrc $HOME
   git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
   mkdir -p ~/.vim/colors && cd ~/.vim/colors
   wget http://www.vim.org/scripts/download_script.php?src_id=13400 -O wombat256mod.vim
   vim +PluginInstall +qall
   cd $HOME


How to use it
--------------

You can start with ``instantRst -f file.rst`` and Firefox will pop-up.
Then open the file using vim ``vim file.rst`` and use ``InstantRst!``.
Once you've finished, terminate server preview using ``:StopInstantRst!``.

Example
~~~~~~~

0. Go to the folder of the project: ``cd vimrst``
1. Open the server ``instantRst -f readme.rst``
2. From another terminal, open the file with vim ``vim readme.rst``
3. Type ``:InstantRst!`` in vim mode

Publish
~~~~~

Convert rst files to html/xml/latex/odt/…
(Some command wrapper, docutils_ required)

    Commands:

+ `:Riv2HtmlFile`_ convert to html file. 
+ `:Riv2HtmlAndBrowse`_ convert to html file and browse. Default is ‘firefox’ 
+ `:Riv2Odt`_ convert to odt file and browse by ft browser 
+ `:Riv2Xml`_ convert to xml file and browse by web browser 
+ `:Riv2S5`_ convert to s5 file and browse by web browser 
+ `:Riv2Latex`_ convert to latex file and edit in vim 
+ `:Riv2Pdf`_ convert to latex file and then convert to pdf file.

    Options:

+ If you have installed Pygments_ , code will be highlighted in html , as the syntax highlight style sheet have been embedded in it by Riv. You can change the style sheet with ‘`g:riv_html_code_hl_style`_’ - Syntax highlight for other formatting are not supported yet. + Some misc changing have been done on the style sheet for better view in html. The ``literal`` and ``literal-block``‘s background have been set to ’#eeeeee’. + To add some args while converting. `g:riv_rst2html_args`_ , `g:riv_rst2latex_args`_ and Etc. can be used. + Output files path - For the files that are in a project. The path of converted files by default is under ``build_path`` of your project directory. 1. Default is ``_build`` 2. To change the path. Set it in your vimrc:: " Assume you have a project name project 1 let project1.build_path = ‘~/Documents/Riv_Build’ 3. Open the build path: `:Riv2BuildPath`_ ``2b`` 4. Local file link converting will be done. See `local file link converting`_ for details. 5. Set `g:riv_auto_rst2html`_ to 1 to automatic convert after writing. only project file are auto converted. - For the files that not in a project. ‘`g:riv_temp_path`_’ is used to determine the output path

:NOTE: When converting, It will first try ``rst2xxxx2.py`` , then try ``rst2xxxx.py``
You’d better install the package of python 2 version. And make sure it’s in your ``$PATH`` Otherwise errors may occur as py3 version uses ‘bytes’.


Basic RST
"""""""""

+ **Bold** = ``**Strong**`` *e.g.* **this text is bold**
+ **Italic** = ``*Italic*`` *e.g.* *this text is italic*
+ **Inline Code** = ````some code```` *e.g.* ``$this`` variable
+ **Link** = ``http://suse.com/`` *e.g.* http://suse.com/
+ **Hyperlink** = ```Bugzilla <https://www.bugzilla.org/>`_`` *e.g* `Bugzilla
  <https://www.bugzilla.org/>`_
+ **Link** = ``:RivCreateLink`` and it will guide you through 

**Create a Section title**

Many times we need to structure our document using some kind of section
similar to HTML Headers. If you are not sure what kind of character
corresponds to each header (from 1 to 6), you can use ``:RivTitle[1-6]`` to
create a level title

Level 1
=======

Level 2
-------

Level 3
~~~~~~~

Level 4
"""""""

Level 5
'''''''

Level 6
```````


**View current document's sections**

Like reading a PDF file, I I like to browse amongs sections using the left
window. In order to appear the left window showing all sections, in which
you can browse (up ``k`` and down ``j``) using ``:RivHelpSection``.


+ **Table of Contents** = ``:RivCreateContent``

+ **Literal-Block** = ``:RivCreateLiteralBlock``

+ **Explicit-mark** = ``:RivCreateExplicitMark``

**View current document's sections**

Like reading a PDF file, I I like to browse amongs sections using the left
window. In order to appear the left window showing all sections, in which
you can browse (up ``k`` and down ``j``) using ``:RivHelpSection``.


+ **Table of Contents** = ``:RivCreateContent``

+ **Literal-Block** = ``:RivCreateLiteralBlock``

+ **Explicit-mark** = ``:RivCreateExplicitMark``


Code Highlighting
"""""""""""""""""

For the ``code`` directives (also ``sourcecode`` and ``code-block``).
Syntax highlighting of Specified languages are on ::
.. code:: python

    python highlighting
    github does not support syntax highlighting rendering for rst file yet.
    x = [0 for i in range(100)]

There are code block indicator for every code directives,
It’s first column of the line in code block are highlighted to
indicate it’s a code block.

You can disable it by setting `g:riv_code_indicator`_ to 0.

The ``highlights`` directives in Sphinx_ could also be used to
highlight big block of codes. ::
.. highlights:: python x = [0 for i in range(100)] .. highlights::

    Use ‘`g:riv_highlight_code`_’ to set which languages to be highlighted.

:NOTE: To highlighting codes in converted file,
pygments_ package must installed for docutils_ to
parse syntax highlighting.
See http://docutils.sourceforge.net/sandbox/code-block-directive/tools/pygments-enhanced-front-ends/ 


