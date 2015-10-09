# Personal Atom Tool Bar package

It´s my personal tool bar using [tool-bar](https://atom.io/packages/tool-bar) package for [Atom](https://atom.io).

Forked from [varemenos/atom-toolbar-almighty](https://github.com/varemenos/atom-toolbar-almighty).

## Description

An atom-tool-bar plugin that adds many commonly used actions in the tool-bar to my personal use.

![screenshot](https://cdn.rawgit.com/varemenos/atom-toolbar-almighty/master/screenshot.png)

[From left to right]

* open file
* open folder
* save file
* open git projects -> requires git-projects package
* -
* comment line
* comment block -> requires block-comment package
* -
* split left
* split right
* -
* git merge conflicts -> requires merge-conflicts package
* toggle fullscreen
* toggle tree-view
* toggle minimap
* -
* reload window
* opens a terminal (split bottom) -> requires term3 package
* settings

_The toolbar buttons that require other packages will only appear if you have those packages installed_

## Installation

First you have to install the `tool-bar` package which is required:

```bash
apm install tool-bar
```

Then you install the `tool-bar-besser` package:

```bash
apm install tool-bar-besser
```

## License

The MIT License
