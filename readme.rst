########################
RST Quick Start Tutorial
########################

:Authors: Panos G.

:Version: 1.0 of 02/05/2015


Overview
========

Here's a list of plugins we are going to install and configure

1. Vundle - https://github.com/gmarik/Vundle.vim
2. RIV - https://github.com/Rykka/riv.vim
3. InstantRST - https://github.com/Rykka/InstantRst
4. InstantRST Server - https://github.com/rykka/instant-rst.py
5. Rhythm css - https://github.com/Rykka/rhythm.css
6. NerdTREE - https://github.com/scrooloose/nerdtree
7. PowerLine - https://github.com/powerline/powerline
8. ctrlp - https://github.com/kien/ctrlp.vim
9. tabular - https://github.com/godlygeek/tabular

Also, we are going to use put some magic in ``.vimrc`` file
by following the guideliens of
PuCon 2012 talk - https://github.com/mbrochh/vim-as-a-python-ide .

Installation
------------
I use Vundle as the tool that helps me to install all the plugins I need
in very simple way.

1. **Requirements**
  
.. code-block:: bash

   zypper install python-devel curl git python-pip
   sudo pip install https://github.com/Rykka/instant-rst.py/archive/master.zip


2. **Installation**

   Just copy and paste the following command in your terminal
   and it will do all the work for you. Just make sure you have
   installed all the requirements from above.

   Type: ``curl http://bit.ly/1DCKEn6 -L -o - | sh``

Write and Preview on the fly
----------------------------

You can start with ``instantRst -f file.rst`` and Firefox will pop-up.
Then open the file using vim ``vim file.rst`` and use ``InstantRst!``.
Once you've finished, terminate server preview using ``:StopInstantRst!``.

Example
~~~~~~~

+ Go to the folder of the project: ``cd vimrst``
+ Open the server ``instantRst -f readme.rst``
+ From another terminal, open the file with vim ``vim readme.rst``
+ Type ``:InstantRst!`` in vim mode

Publish
~~~~~~~

+ `:Riv2HtmlFile` convert to html file. 
+ `:Riv2HtmlAndBrowse` convert to html file and browse. Default is ‘firefox’ 
+ `:Riv2Odt` convert to odt file and browse by ft browser 
+ `:Riv2Xml` convert to xml file and browse by web browser 
+ `:Riv2S5` convert to s5 file and browse by web browser 
+ `:Riv2Latex` convert to latex file and edit in vim 
+ `:Riv2Pdf` convert to latex file and then convert to pdf file.

Basic RST
~~~~~~~~~

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


View current document's sections
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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
~~~~~~~~~~~~~~~~~

For the ``code`` directives (also ``sourcecode`` and ``code-block``).
Syntax highlighting of Specified languages are on ::
.. code:: bash

    #!/bin/bash
    echo "This is a $(opinion) thing"

