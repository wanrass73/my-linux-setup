# Gemini-Cli Linux Configuration

This repository contains various configuration files and scripts for a personalized Linux setup, managed and optimized with the help of Gemini CLI.

## Overview

This setup focuses on enhancing the terminal experience with tools like `lsd` for file listings, `starship` for a powerful prompt, and `fastfetch` for system information. Key configurations include:

-   **`lsd` (LSDeluxe)**: A modern `ls` replacement with icons, colors, and tree view.
-   **Zsh**: The Z shell, configured with `Oh My Zsh` and custom aliases.
-   **`vivid`**: A tool for generating `LS_COLORS` for vibrant terminal colors.
-   **`starship`**: A cross-shell prompt that is fast and customizable.
-   **`fastfetch`**: A neofetch-like tool for displaying system information.

## Configuration Details

### `lsd` Configuration

To achieve a visually rich `lsd` output with icons, vivid colors, and no distracting background colors, ensure the following:

1.  **`~/.config/lsd/config.yaml`**:
    Create or update this file with the following content:
    ```yaml
    icon: auto
    color:
      when: always
    layout: tree
    ```
    This configuration enables icons, ensures colors are always displayed, and sets the default layout to a tree view.

2.  **`~/.config/lsd/colors.yaml`**:
    Ensure this file is **removed** if it exists, as `lsd` will rely on `LS_COLORS` for color definitions.

### Zsh (`.zshrc`) Configuration

The `~/.zshrc` file is configured to:

1.  **Enable `vivid`**: This tool generates a comprehensive `LS_COLORS` environment variable for vibrant file type coloring.
    ```zsh
    eval "$(vivid generate zsh)"
    ```

2.  **Filter `LS_COLORS`**: A Zsh-native command is used to remove any background color codes (specifically `42` for green background) from the `LS_COLORS` variable, ensuring a clean, background-free output for `lsd`.
    ```zsh
    export LS_COLORS="${LS_COLORS//;42/}"
    ```
    *(Note: This line should be placed after `eval "$(vivid generate zsh)"` in your `.zshrc`)*

3.  **Initialize `starship`**: For a customizable and fast shell prompt.
    ```zsh
    eval "$(starship init zsh)"
    ```

4.  **Custom Aliases**: Includes various aliases for common commands and `lsd` functionality (e.g., `ls='lsd'`, `lt='ls --tree'`).

### Applying Configurations

To apply these configurations:

1.  **Update `~/.config/lsd/config.yaml`** with the content provided above.
2.  **Ensure `~/.config/lsd/colors.yaml` is removed.**
3.  **Copy the modified `.zshrc`** from this project directory to your home directory:
    `cp /home/aiwasevil/Gemini-Cli/.zshrc ~/.zshrc`
4.  **Open a new terminal window** for changes to take effect.

## Troubleshooting

-   **Green Background in `lsd`**: Ensure the `LS_COLORS` filter is correctly applied in your `.zshrc` after `vivid` initialization.
-   **`lsd` Configuration Errors**: Double-check the YAML syntax in `~/.config/lsd/config.yaml` against the provided example.
-   **`starship` Errors**: If `starship` fails, ensure its configuration (`~/.config/starship.toml`) is valid and that `starship` is correctly initialized in `.zshrc`.

---
*This README.md was generated with the help of Gemini CLI.*