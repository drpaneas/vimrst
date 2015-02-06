###############
Riv: QuickStart
###############

:Author:    Panos Georgiadis
:Date:      2015-02-05

Riv is a plugin that will help us to work better with reStructuredText in Vim.


Folding
-------

This document was opened with some of them are folded.

+ **Expand** the contents of the section by pressing ``<Enter>`` on
  the folding

+ **Compress or toggle** the contents by pressing ``za``

+ **Update Folding** manually by pressing ``zx`` or it will be auto
  updated once you save the file.

+ **Disable Folding** on the whole by using ``set nofoldenable``
  directive. If you hate folding, feel fre to put it inside
  your  ``.vimrc`` file.


Basic
-----

+ **Bold** = ``**Strong**`` *e.g.* **this text is bold**
+ **Italic** = ``*Italic*`` *e.g.* *this text is italic*
+ **Inline Code** = ````some code```` *e.g.* ``$this`` variable
+ **Link** = ``http://suse.com/`` *e.g.* http://suse.com/
+ **Hyperlink** = ```Bugzilla <https://www.bugzilla.org/>`_`` *e.g* `Bugzilla
  <https://www.bugzilla.org/>`_
+ **Source code** with bash highlighting, 

  *e.g.*

 ``.. code:: bash``

   ``#/bin/bash``

   ``echo "The date is $(date)"``

is going to be generated into:

.. code:: bash

   #/bin/bash
   echo "The date is $(date)"



Tricks
======

+ **date** = ``:RivCreateDate``

    ``:Date:`` 2015-02-05

+ **Indentation** = Press ``<`` at This line to align it to parent.

+ **Indent Multiple lines**

* This is a List
    
      Line 1 ``Vjj<`` will align these lines to parent.
      Line 2
      Line 3
    

RST
===

Section
-------

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


List
----

**Toggle current line to list**

``:RivListToggle`` or ``<C-E>l```

* Press ``<C-E>l``` on this line To toggle the List

**Create a new list** 

``:RivListNew`` or ``<C-E>ln``, 
Also ``<C-Enter>`` in Inert Mode

1. Press ``A<C-Enter>`` to create a new list item

**Create a sub list** 

``:RivListSub`` or ``<C-E>lb``, 
Also ``<S-Enter>`` in Inert Mode

1. Press ``A<S-Enter>`` to create a sub list item

**Create a sup list**

``:RivListSup``  or ``<C-E>lp``,
Also ``<C-S-Enter>`` in Insert Mode

1. This is a List

    A. Press ``A<C-S-Enter>`` to create a sup list item

Link
----

**Navigate between links** 

``:RivLinkNext`` ``:RivLinkPrev``,
or ``<Tab>`` and ``<S-Tab>`` in Normal Mode 

Section_ Link_

**Jump to Link Target** 

``:RivLinkOpen`` ``<C-E>ko``
Or ``<Enter>`` or Double clicking in Normal Mode

    Google_

**Link can targets to sections** 

Use `` or '' to jump back

    Section_ 

**Create a link**

``:RivCreateLink`` or ``<C-E>ck``

    Press ``<C-E>ck`` on Github to create the Link

Table
-----

**Create a Grid Table** 

``:RivTableCreate`` or ``<C-E>tc``




Table will be auto formatted when you leave insert mode.

In Insert mode:

    +-----------------------------------------+
    | Press ``<Enter>`` to create a new line  |
    +-----------------------------------------+
    | Press ``<C-Enter>`` to create a new row |
    +-----------------------------------------+

Insert a ``|`` to create new columns.

    +---------+
    | A Table |
    +---------+

Publish
-------

docutils_ package required.

**Convert document to other format**

``:Riv2HtmlAndBrowse`` or ``<C-E>2hh`` will convert current file to html and browse.

``:Riv2Odt`` or ``<C-E>2oo`` will convert current file to odt.

If you are working in a project.

``:Riv2HtmlProject`` will convert current project to html.
``:RivProjectHtmlIndex`` will open index in browser.

Riv
===

Project
-------
Put your documents in a project

**Open main project's index file**

``:RivProjectIndex`` or ``<C-E>ww`` to 

**Show project list**

``:RivProjectList`` or ``<C-E>wa``

File
----
Link files

**File link in vim**

File with specified extensions will be highlighted and linked.

    index.rst ~/Documents/ test.py

It's not converted, so in vim only.

**File link in other format**

To make links working after converting. 
Riv provide two styles::

    Moinmoin style: [[riv]]

    Sphinx style: :doc:`riv`

by default the Moinmoin style are used, 
and the links of this style will be converted.

If you are using Sphinx style. 
You must convert it using Sphinx_ toolkit.

Todo
----
Things Todos

**Create todo item and toggle state**

On List lines, Press ``:RivTodoToggle`` or ``<C-E>ee``,
You can also click the todo items to toggle it's state.

    A. [ ] Press ``<C-E>ee`` to toggle the todo state.

**Change Priorities**

``:RivTodoPrior`` or ``<C-E>ep``

    A. [ ] Press ``<C-E>ep`` to toggle the todo prior

Scratch
-------
A place to hold your diaries or notes.

+ **Create scratch of Today** = ``:RivScratchCreate``

+ **View Scratch Index** = ``:RivScratchView``

Helper
------
Help manage the document.

+ **Section Helper** = ``:RivHelpSection``

+ **File Helper* = ``:RivHelpFile``

+ **Todo Helper** = ``:RivHelpTodo``

Where To go
===========

The QuickStart for Riv have finished.

You can starting your reStructuredText in Vim.

For Vim help, use ``:h``.

To get a quick view of reStructuredText, use ``:RivPrimer``

To view the detailed Riv instruction, use ``:RivInstruction``



.. _Google: www.google.com
.. _docutils: http://docutils.sourceforge.net/
.. _Sphinx: http://sphinx.pocoo.org/
.. _riv.vim: www.github.com/Rykka/riv.vim
