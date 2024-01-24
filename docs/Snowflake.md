# Snowflake

This document describes VS Code uses with our Snowflake data lake.

## Snowflake Extensions

- [Snowflake](https://marketplace.visualstudio.com/items?itemName=snowflake.snowflake-vsc)
- [sqlfluff](https://marketplace.visualstudio.com/items?itemName=dorzey.vscode-sqlfluff)
  - **Note**: As per the documentation, `sqlfluff` functionality requires installation of `sqlfluff`, likely into a `python` virtual environment such as those managed by `poetry`.

## Snowflake Features

- Single Sign On
  
![Alt text](pictures/snowflake/snowflake-sso.jpg)

- Object Explorer including Databases, drill down to metadata, data preview, source SQL

![Alt text](pictures/snowflake/snowflake-object-explorer.jpg)
![Alt text](pictures/snowflake/snowflake-object-explorer-metadata-drill-down.jpg)
![Alt text](pictures/snowflake/snowflake-object-explorer-data-preview.jpg)
![Alt text](pictures/snowflake/snowflake-object-explorer-source-sql.jpg)

- Query History including click to view results and click to copy

![Alt text](pictures/snowflake/snowflake-query-history.jpg)
![Alt text](pictures/snowflake/snowflake-query-history-view-old-results.jpg)
![Alt text](pictures/snowflake/snowflake-query-history-copy-sql-to-clipboard.jpg)

- Query Editor
  - Syntax highlighting
  
  ![Alt text](pictures/snowflake/snowflake-query-editor-syntax-highlighting.jpg)
  
  - Hover for hints and link to Snowflake documentation

  ![Alt text](pictures/snowflake/snowflake-query-editor-hover-to-link-to-docs.jpg)

  - Linting hints and quick fixes (driven by `sqlfluff`)

  ![Alt text](pictures/snowflake/snowflake-query-editor-linting-hints.jpg)
  ![Alt text](pictures/snowflake/snowflake-query-editor-links-to-sqlfluff-rules.jpg)
  ![Alt text](pictures/snowflake/snowflake-query-editor-quick-fix-suggestions.jpg)
  
  - Execute queries (`command+enter`) yields multiple views after execution including information pane, ability to save results locally and opening results in new tab
  ![Alt text](pictures/snowflake/snowflake-query-editor-executed-results.jpg)
  ![Alt text](pictures/snowflake/snowflake-query-editor-locally-saved-results.jpg)
  ![Alt text](pictures/snowflake/snowflake-query-editor-view-results-in-own-tab-with-sort.jpg)

## Commands

- View: Snowflake (`command+shift+s`)

## Not Explored Here

- [Snowflake Notebooks (likely integrated with `snowpark`)](https://www.snowflake.com/blog/build-code-using-snowpark-notebook/)
