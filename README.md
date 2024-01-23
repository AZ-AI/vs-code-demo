# Demo of some Visual Studio Code (VS Code) Features

**Note:** when keyboard shortcuts are provided, they are based on my current settings on a Mac, and may not be the default settings. You can customize your own according to your preference.

- [Demo of some Visual Studio Code (VS Code) Features](#demo-of-some-visual-studio-code-vs-code-features)
  - [File Agnostic](#file-agnostic)
    - [File-Agnostic Features](#file-agnostic-features)
    - [File-Agnostic Extensions](#file-agnostic-extensions)
    - [File-Agnostic Links](#file-agnostic-links)
  - [Snowflake](#snowflake)
  - [Markdown](#markdown)
    - [Markdown Extensions](#markdown-extensions)
    - [Markdown Features](#markdown-features)
    - [Commands](#commands)
    - [Markdown Links](#markdown-links)

## File Agnostic

This section describes VS Code uses that are agnostic to the file type being edited.

### File-Agnostic Features

- Autosave
- Format on type
- Format on save
- Fix on save
- Creation of opening and closing punctuation: (e.g., ```''""()[]{}```)
  - Wrap selected text in opening-and-closing punctuation
- Search entire directory, including auto-complete and recently opened suggestions (`command + shift + f`)

![Alt text](assets/pictures/search-entire-directory.jpg)

- Replace in entire directory (`command + shift + h`)
- Highlight all instances (click on a token)

![Alt text](assets/pictures/highlight-all-instances.jpg)

- Select next instance (`command d`)
- Open file in directory (`command p`)
- Multi-cursor (`alt + click` or `alt + command + down/up arrow`)

![Alt text](assets/pictures/multicursor.jpg)

- Themes including light, dark, and colorblind-friendly (`command k` then `command t`)

![Alt text](assets/pictures/themes-light-and-dark.jpg)
![Alt text](assets/pictures/themes-light-example.jpg)

- Problems (`command+shift+m`) and quick-fix suggestions (`command + .`)

![Alt text](assets/pictures/problems-view.jpg)
![Alt text](assets/pictures/quickfix-context.jpg)

- Toggle Comment multiline (`command /`)
- Explorer view (`command+shift+e`)
  - Open editors

  ![Alt text](assets/pictures/explorer-open-editors.jpg)
  
  - Workspace file structure
  
  ![Alt text](assets/pictures/explorer-workspace-file-structure.jpg)
  
  - Outline
  
  ![Alt text](assets/pictures/explorer-outline.jpg)
  
  - Timeline
  
  ![Alt text](assets/pictures/explorer-timeline.jpg)

- Section collapsing

![Alt text](assets/pictures/collapsing-sections-opened.jpg)
![Alt text](assets/pictures/section-collapsing-collapsed.jpg)

- Terminal integration including multiple terminal groups and panes

![Alt text](assets/pictures/terminal-integration.jpg)

- Huge selection of extensions (`command+shift+x`)

![Alt text](assets/pictures/extensions-installed.jpg)
![Alt text](assets/pictures/extensions-recommended.jpg)

### File-Agnostic Extensions

- Code Spell Checker
  - Lints when a word is not in the dictionary:
  
  ![Alt text](assets/pictures/code-spell-check-linter.jpg)
  
  - Allows you to fix or add custom words to your dictionary with quick-fix suggestions
  
  ![Alt text](assets/pictures/code-spell-check-quick-fix-suggestions.jpg)
  
  - Also available for several other languages including Swedish, German, and a special 'Medical Terminology' dictionary
- Git including GUI-based repository management, branch management, commit history, pull-request management
  - [GitLens - Git supercharged](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
  - [Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
  - [Git Project Manager](https://marketplace.visualstudio.com/items?itemName=felipecaputo.git-project-manager)
  - [GitHub Actions](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-github-actions)
  - [GitHub Pull Requests and Issues](https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github)
  
  ![Alt text](assets/pictures/git-gui-based-branch-management.jpg)
  ![Alt text](assets/pictures/git-gui-based-repo-management.jpg)
  ![Alt text](assets/pictures/git-gui-commit-history.jpg)
  ![Alt text](assets/pictures/git-gui-pr-management.jpg)

### File-Agnostic Links

- [Basic Editing](https://code.visualstudio.com/docs/editor/codebasics#:~:text=VS%20Code%20allows%20you%20to%20quickly%20search%20over%20all%20files,and%20enter%20your%20search%20term.)

## Snowflake

This section describes VS Code uses that are with our Snowflake data lake.

## Markdown

This section describes VS Code uses that are with Markdown files.

### Markdown Extensions

- Markdown All in One
- Markdown PDF
- Markdown Preview Enhanced
- markdownlint

### Markdown Features

- Auto-list creation
- Embedding of pictures (drag from Explorer view, hold `shift`, release drag)

### Commands

- `command + k` then `v` to view preview
- `command + shift + p` then search 'Markdown' for extension commands such as exporting to pdf
- `command t` then `c` create table of contents

### Markdown Links

- [Markdown syntax](https://www.markdownguide.org/basic-syntax/)
