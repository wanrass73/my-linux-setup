# My Linux Setup

This repository contains configuration files and scripts for my personalized Linux setup.

## Gemini CLI

The Gemini Command Line Interface is configured for easy access.

-   **`gemini-cli.desktop`**: Desktop entry to launch the Gemini CLI.
-   **`launch_gemini.sh`**: Script executed by the desktop entry, now configured to pass model arguments directly from the `.desktop` file.

## Fastfetch with Random Logos

Fastfetch is set up to display system information with a random logo on terminal startup.

-   **`fastfetch-linux-amd64`**: Contains the `flashfetch` executable.
-   **`my-linux-setup/scripts/random-fastfetch.sh`**: A script that selects a random image from `FastfetchLogos` and uses it with `fastfetch`.
-   **`FastfetchLogos`**: This directory contains custom `.png` images used by `random-fastfetch.sh` for random logos.
-   **`~/.zshrc`**: Configured to include the `fastfetch` executable in `PATH`, the `random-fastfetch.sh` script in `PATH`, and to execute `random-fastfetch.sh` on Zsh terminal startup. Duplicate `fastfetch` calls have been removed.

## Kitty Terminal Emulator

Configuration for the Kitty terminal emulator.

-   **`kitty/kitty.conf`**: Main configuration file for Kitty.
-   **`kitty/kitty-themes`**: Directory containing Kitty themes.

---

This README documents the current state of the setup as configured with the help of Gemini CLI.
