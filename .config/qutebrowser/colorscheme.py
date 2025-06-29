# melange.py
# Qutebrowser colorscheme based on the Melange palette.
# Inspired by savq/melange-nvim and gruvbox.py template.

# This script sets up the colors for various qutebrowser UI elements.
# To use, save this file (e.g., as melange.py) in your qutebrowser config directory
# (usually ~/.config/qutebrowser/).
# Then, in your config.py, add:
# config.source('melange.py')

# Main Melange Color Palette
# Backgrounds and foregrounds
c_background = '#292522'  # Very dark brown/black - UPDATED to #292522
c_foreground = '#c7b195'  # Light beige/tan
c_comment = '#726450'     # Medium brown/grey, for less prominent text
c_ui_elements = '#4f4135' # Dark brown, for borders/separators
c_selection_bg = '#fff6d2'# Very light beige, for selection backgrounds - NOW used for selections

# Accent Colors (main, bright, and slightly darker variants)
# These are derived from melange-nvim's primary accent colors
c_red = '#E49B5D'         # Muted orange/gold - Still used for matched text, errors etc.
c_bright_red = '#fbe19e'  # Brighter orange/gold
c_dark_red = '#b28e4e'    # Darker orange/gold

c_green = '#879a7f'       # Muted green
c_bright_green = '#a3b79b'# Brighter muted green
c_dark_green = '#6d7c67'  # Darker muted green

c_yellow = '#e6b96b'      # Muted golden yellow
c_bright_yellow = '#fadd94'# Brighter golden yellow
c_dark_yellow = '#b08f51' # Darker golden yellow

c_blue = '#9f957e'        # Muted grey-blue
c_bright_blue = '#b5aca2' # Brighter muted grey-blue
c_dark_blue = '#837a6b'   # Darker muted grey-blue

c_magenta = '#e2a578'     # Muted orange-pink
c_bright_magenta = '#f7c19c'# Brighter muted orange-pink
c_dark_magenta = '#af825f'# Darker muted orange-pink

c_cyan = '#a7a08b'        # Muted grey-green-blue
c_bright_cyan = '#bdc3ab' # Brighter muted grey-green-blue
c_dark_cyan = '#8c8273'   # Darker muted grey-green-blue

# Set colors for various qutebrowser components
config.set('colors.webpage.bg', c_background) # Background color of loaded webpages

# Completion bar
config.set('colors.completion.odd.bg', c_background)
config.set('colors.completion.even.bg', c_background)
config.set('colors.completion.fg', c_foreground)
config.set('colors.completion.category.fg', c_yellow) # Category text
config.set('colors.completion.category.bg', c_background)
config.set('colors.completion.category.border.top', c_background)
config.set('colors.completion.category.border.bottom', c_background)
config.set('colors.completion.item.selected.fg', c_background) # Changed to new dark background
config.set('colors.completion.item.selected.bg', c_selection_bg) # Changed to melange light
config.set('colors.completion.item.selected.border.top', c_selection_bg) # Changed to melange light
config.set('colors.completion.item.selected.border.bottom', c_selection_bg) # Changed to melange light
config.set('colors.completion.item.selected.match.fg', c_red) # Matched text in selected item (melange orange)
config.set('colors.completion.match.fg', c_red) # Matched text in unselected item (melange orange)
config.set('colors.completion.scrollbar.bg', c_background)
config.set('colors.completion.scrollbar.fg', c_ui_elements)

# Context menu (QtWebEngine only)
config.set('colors.contextmenu.menu.bg', c_background)
config.set('colors.contextmenu.menu.fg', c_foreground)
config.set('colors.contextmenu.selected.bg', c_selection_bg) # Changed to melange light
config.set('colors.contextmenu.selected.fg', c_background) # Changed to new dark background

# Downloads bar
config.set('colors.downloads.bar.bg', c_background)
config.set('colors.downloads.error.fg', c_red)
config.set('colors.downloads.error.bg', c_background)
config.set('colors.downloads.start.fg', c_blue)
config.set('colors.downloads.start.bg', c_background)
config.set('colors.downloads.stop.fg', c_green)
config.set('colors.downloads.stop.bg', c_background)
config.set('colors.downloads.system.fg', 'rgb') # Use system colors for default downloads
config.set('colors.downloads.system.bg', 'rgb') # Corrected: 'rgb' is a valid value here.

# Hints
config.set('colors.hints.fg', c_yellow) # Foreground for hints
config.set('colors.hints.bg', c_background)
config.set('colors.hints.match.fg', c_bright_yellow) # Matched hints

# Key hint mode (like when you press `?`)
config.set('colors.keyhint.fg', c_foreground)
config.set('colors.keyhint.suffix.fg', c_yellow) # Suffix text like `[F]`
config.set('colors.keyhint.bg', c_background)

# Messages (status messages at the bottom)
config.set('colors.messages.error.fg', c_red)
config.set('colors.messages.error.bg', c_background)
config.set('colors.messages.info.fg', c_foreground)
config.set('colors.messages.info.bg', c_background)
config.set('colors.messages.warning.fg', c_yellow)
config.set('colors.messages.warning.bg', c_background)

# Prompts (like `:open` or `:set`)
config.set('colors.prompts.fg', c_foreground)
config.set('colors.prompts.bg', c_background)
config.set('colors.prompts.selected.bg', c_selection_bg) # Changed to melange light
config.set('colors.prompts.border', c_ui_elements)
config.set('colors.prompts.selected.fg', c_background) # Changed to new dark background

# Status bar
config.set('colors.statusbar.normal.fg', c_foreground)
config.set('colors.statusbar.normal.bg', c_background)
config.set('colors.statusbar.command.fg', c_foreground)
config.set('colors.statusbar.command.bg', c_background)
config.set('colors.statusbar.command.private.fg', c_foreground)
config.set('colors.statusbar.command.private.bg', c_ui_elements)
config.set('colors.statusbar.passthrough.fg', c_blue)
config.set('colors.statusbar.passthrough.bg', c_background)
config.set('colors.statusbar.private.fg', c_foreground)
config.set('colors.statusbar.private.bg', c_ui_elements)
config.set('colors.statusbar.progress.bg', c_blue) # Progress bar color
config.set('colors.statusbar.url.fg', c_foreground)
config.set('colors.statusbar.url.hover.fg', c_blue) # URL on hover
config.set('colors.statusbar.url.success.http.fg', c_foreground) # Regular HTTP URL
config.set('colors.statusbar.url.success.https.fg', c_green) # HTTPS URL
config.set('colors.statusbar.url.warn.fg', c_yellow) # Warning URL (e.g., certificate issue)
config.set('colors.statusbar.url.error.fg', c_red) # Error URL (e.g., broken HTTPS)

# Tabs
config.set('colors.tabs.bar.bg', c_ui_elements) # Background of the tab bar itself
config.set('colors.tabs.odd.fg', c_foreground)
config.set('colors.tabs.odd.bg', c_ui_elements)
config.set('colors.tabs.even.fg', c_foreground)
config.set('colors.tabs.even.bg', c_ui_elements)
config.set('colors.tabs.selected.odd.fg', c_foreground)
config.set('colors.tabs.selected.odd.bg', c_background) # Selected tab background
config.set('colors.tabs.selected.even.fg', c_foreground)
config.set('colors.tabs.selected.even.bg', c_background)
config.set('colors.tabs.indicator.start', c_blue) # Tab loading indicator
config.set('colors.tabs.indicator.stop', c_green)
config.set('colors.tabs.indicator.error', c_red)

# Tooltip
config.set('colors.tooltip.fg', c_foreground)
config.set('colors.tooltip.bg', c_background)

# Downloads menu
config.set('colors.downloads.bar.bg', c_background)
config.set('colors.downloads.error.bg', c_background)
config.set('colors.downloads.start.bg', c_background)
config.set('colors.downloads.stop.bg', c_background)

# Background for pages when in `:view-source` mode.
config.set('colors.webpage.bg', c_background)

# Render all colors on the webpage for testing:
# :set colors.webpage.darkmode.enabled false
# :set colors.webpage.bg #292522
# :set colors.webpage.fg #c7b195

