########################
RST Quick Start Tutorial
########################

:Authors: Panos Georgiadis

:Version: 1.0 of 2015-02-06


Overview
========

Here's a list of plugins we are going to install and configure

1. Vundle            - https://github.com/gmarik/Vundle.vim
2. RIV               - https://github.com/Rykka/riv.vim
3. InstantRST        - https://github.com/Rykka/InstantRst
4. InstantRST Server - https://github.com/rykka/instantrst.py
5. Rhythm css        - https://github.com/Rykka/rhythm.css
6. NerdTREE          - https://github.com/scrooloose/nerdtree
7. PowerLine         - https://github.com/powerline/powerline
8. ctrlp             - http://kien.github.io/ctrlp.vim/
9. tabular           - https://github.com/godlygeek/tabular

:Note: Note that this will replace your `.vimrc` file
       so in case you need your old configuration
       please make sure you have a backup.

Installation
------------
I use **Vundle** as the tool that helps me to install all the plugins I need
in a very simple way.

1. **Requirements SLE-12**

.. code-block:: bash

   sudo zypper install python-devel curl git python-pip python-docutils
   sudo pip install instant-rst

:Tip: I would be better if you create a *virtualenv* rather than installing
      pip stuff globally.

2. **Installation**

   Just copy and paste the following command in your terminal
   and it will do all the work for you.

.. code-block:: bash

   curl http://bit.ly/1DCKEn6 -L -o - | sh


Configuration
-------------
You can do all your configuration in `~/.vimrc` file

Themes
~~~~~~
By default `wombat256mod` is enabled, which is a *dark* theme.
If you prefer white background, go to ``~/.vimrc`` and change
the from ``color wombat256mod`` to ``color proton``.

More themes can be found at
https://github.com/flazz/vim-colorschemes/tree/master/colors
while you can put them into ``~/.vim/colors/`` folder and later
enable them via your ``~/.vimrc`` file.

Instant Preview
---------------
The InstantRST plugin allows you to write `RST` and preview in on the fly using
your browser. The good thing is that it also catches potential errors
on real time. *For example*:

:example:
    1. Open the server ``instantRst -f <yourfile>.rst``
    2. From another terminal, open the file with vim ``vim <yourfile.rst``
    3. Type ``:InstantRst!`` in vim normal mode

Basic notation
~~~~~~~~~~~~~~

+ **Bold** = ``**Strong**`` *e.g.* **this text is bold**
+ **Italic** = ``*Italic*`` *e.g.* *this text is italic*
+ **Inline Code** = ````some code```` *e.g.* ``$this`` variable
+ **Link** = ``http://suse.com/`` *e.g.* http://suse.com/
+ **Hyperlink** = ```Bugzilla <https://www.bugzilla.org/>`_`` *e.g* `Bugzilla
  <https://www.bugzilla.org/>`_

Header
~~~~~~

Many times we need to structure our document using some kind of section
similar to HTML Headers. If you are not sure what kind of character
corresponds to each header (from 1 to 6), you can use ``:RivTitle[1-6]``
or `ctrl+e` + `s[1-6]` to create a level title.

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

Code Highlighting
~~~~~~~~~~~~~~~~~

For the ``code`` directives (also ``sourcecode`` and ``code-block``).
Syntax highlighting of Specified languages are on.

*e.g.*

.. code:: bash

   .. code:: bash

       #!\bin\bash
       echo "The date is $(date)"

is going to be generated into:

.. code:: bash

 #/bin/bash
 echo "The date is $(date)"


Tables
~~~~~~
It's very easy to create table and you should use this functionality. There are
two way to create a table using.

Normal Mode
"""""""""""
Type: ``:RivTableCreate`` or ``ctrl+e`` + ``tc``

and it will ask you:
    - Input row number of table: 2
    - Input column number of table: 4

and it will automatically generate a table:

+---------+----------+------+----------+
|      34 | 2        |  sdf | sdf      |
+---------+----------+------+----------+
| sdfddf  | dfsdfsdf | dd   | dfsdfsdf |
+---------+----------+------+----------+

Insert Mode
"""""""""""
In *Insert Mode* you are building by hand. Just write something like:

.. code:: bash

   +--+

and press ``Enter`` to create a new line:

.. code:: bash

   +--+
   |  |
   |  |
   |  |
   +--+

and press ``|`` + ``Enter`` in order to create a new column

.. code:: bash

   +--+--+
   |  |  |
   |  |  |
   |  |  |
   +--+--+

then press ``ctrl+c`` + ``Enter`` in order to move your cursor to the last
left corner of the table. Then go into `Insert` mode and press
``Enter`` to create a new row:

.. code:: bash

   +--+--+
   |  |  |
   |  |  |
   |  |  |
   |  |  |
   +--+--+
   |  |  |
   +--+--+



:Notice: After you have finished writing inside the cells, remember to **use
         intendetation** by pressing either ``<`` or ``>`` keys.
         In that way, your table's **structure** will be **auto-fixed**
         by shifting the cells to their content properly.


Links
~~~~~~
This is how you can create links. Just type ``:RivCreateLink`` or `ctrl+c` + `ck`
and it will ask you for two things: name of the link and the URL of the link:

- `Input link name:` <type 'suse' and press <Enter>

  - `suse`: <type 'suse.com' and press <Enter>

and then, the plugin will automatically create this code:

.. code:: bash

   suse_

   .. _suse: suse.com # placed in the end of the file

So, in that way you can have you links, and they will look like that: suse_



Tricks in RIV Plugin
~~~~~~~~~~~~~~~~~~~~

+ **Date** ``:RivCreateDate`` or ``ctrl + e`` + ``cdd``
+ **Table of Contents** ``:RivCreateContent`` or ``ctrl+e`` + ``cc``
+ **View sections** ``:RivHelpSection`` or `ctrl+e` + `hs`
+ **Select 2 lines** `V` + `j` 
+ **Select 3 lines** `V` + `j` + `j` and you can indent using ``<`` or ``>``

Export in formats
~~~~~~~~~~~~~~~~~
You can export your RST document while you are working on it. The only thing
you have to do is to decide in what format you want to save your file as.

+ ``:Riv2HtmlAndBrowse`` or `ctrl+e` + `2hh` html file.
+ ``:Riv2Odt`` or `ctrl+e` + `2oo` to convert to odt file.
+ ``:Riv2Xml`` or `ctrl+e` + `2xx` to convert to xml file.
+ ``:Riv2Latex`` or `ctrl+e` + `2ss` to convert to latex file.
+ ``:Riv2Pdf`` or `ctrl+e` + `2pp` to convert to pdf file.

NERDTree Plugin
~~~~~~~~~~~~~~~
Enable it by typing: `ctrl+f` or ``:NERDTreeToggle``

CtrlP Plugin
~~~~~~~~~~~~
Enable it by typing: `ctrl+p` or ``:CtrlP``

Tabularize Plugin
~~~~~~~~~~~~~~~~~
Select the lines in Visual Mode (``Vj``) and the press color ``:``. There
you will see something like: ``'<,'>`` so, next to that you can call Tabularize
plugin by typing ``Tabularize /{pattern}``. It will looks like:

.. code:: bash

   '<,'>Tabularize /{pattern}


.. _suse: suse.com
