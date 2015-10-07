module.exports =
  deactivate: ->
    @toolBar?.removeItems()

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'tool-bar-besser'

    @toolBar.addButton
        icon: 'document-text'
        callback: 'application:open-file'
        tooltip: 'Open File'
        iconset: 'ion'

    @toolBar.addButton
        'icon': 'folder'
        'callback': 'application:open-folder'
        'tooltip': 'Open Folder'
        'iconset': 'ion'

    @toolBar.addButton
        'icon': 'archive'
        'callback': 'core:save'
        'tooltip': 'Save File'
        'iconset': 'ion'

    if atom.packages.loadedPackages['git-projects']
        @toolBar.addButton
            'icon': 'octoface'
            'tooltip': 'Git Projects'
            'callback': 'git-projects:toggle'

    @toolBar.addSpacer()

    @toolBar.addButton
        'icon': 'columns'
        'iconset': 'fa'
        'tooltip': 'Split screen - Horizontally'
        'callback': 'pane:split-right'

    @toolBar.addButton
        'icon': 'columns fa-rotate-270'
        'iconset': 'fa'
        'tooltip': 'Split screen - Vertically'
        'callback': 'pane:split-down'

    @toolBar.addSpacer()

    @toolBar.addButton
        'iconset': 'ion'
        'icon': 'pound'
        'tooltip': 'Line Comments'
        'callback': 'editor:toggle-line-comments'

    if atom.packages.loadedPackages['block-comment']
        @toolBar.addButton
            'iconset': 'ion'
            'icon': 'quote'
            'tooltip': 'Block Comment'
            'callback': 'block-comment:toggle'

    @toolBar.addSpacer()

    if atom.packages.loadedPackages['merge-conflicts']
        @toolBar.addButton
            'icon': 'code-fork'
            'iconset': 'fa'
            'tooltip': 'Merge Conflicts'
            'callback': 'merge-conflicts:detect'

    @toolBar.addButton
        'iconset': 'fa'
        'icon': 'arrows-alt'
        'tooltip': 'Toggle Fullscreen'
        'callback': 'window:toggle-full-screen'

    @toolBar.addButton
        'icon': 'sitemap'
        'callback': 'tree-view:toggle'
        'tooltip': 'Toggle Sidebar'
        'iconset': 'fa'

    @toolBar.addButton
        'icon': 'map'
        'callback': 'minimap:toggle'
        'tooltip': 'Toggle Minimap'
        'iconset': 'ion'

    @toolBar.addSpacer()

    @toolBar.addButton
        'icon': 'refresh'
        'callback': 'window:reload'
        'tooltip': 'Reload Window'
        'iconset': 'ion'

    if atom.packages.loadedPackages['term3']
        @toolBar.addButton
            'icon': 'terminal'
            'callback': 'term3:open-split-down'
            'tooltip': 'Term3 Split Down'

    @toolBar.addButton
        'icon': 'gear-a'
        'callback': 'settings-view:open'
        'tooltip': 'Open Settings View'
        'iconset': 'ion'
