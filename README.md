![Toolbar Button](icon.png)

# External Editor Toggle

A lightweight Godot editor plugin that adds a toolbar button to toggle the external script editor setting (`text_editor/external/use_external_editor`). Features retro 8-bit pixel art icons to indicate the editor state.

## Features
- Adds a toolbar button to toggle between Godot’s internal script editor and an external editor.
- Visual feedback with 8-bit pixel art icons ("External Editor" and "Internal Editor" states).
- Minimal screen space usage (no dock).
- Clean integration with Godot’s UI using the `MainScreenButton` theme.

## Installation
1. Download the plugin from the [Godot Asset Library](https://godotengine.org/asset-library/asset) or this repository.
2. Copy the `external_editor` folder to `res://addons/` in your Godot project.
3. Enable the plugin in **Project > Project Settings > Plugins**.

## Usage
- A button labeled "Toggle External Editor" appears in the Godot editor’s main toolbar.
- Click to switch between "External Editor" (uses external editor) and "Internal Editor" (uses Godot’s built-in editor).
- **Note**: Requires an external editor path to be set in **Editor > Editor Settings > Text Editor > External**.

## Screenshots
![Toolbar Button](toolbar-button.png)
*Toolbar button showing the "External Editor" state with 8-bit icon.*

## Compatibility
- Tested on Godot 4.2 and 4.3.
- May require updates for future Godot versions if the toolbar structure changes.

## License
This plugin is released under the [Unlicense](https://unlicense.org/), effectively placing it in the public domain. You are free to use, modify, and distribute it without any restrictions.

## Support
If you encounter issues or have feature requests, open an issue on this GitHub repository.
