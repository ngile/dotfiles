config.load_autoconfig(False)
config.set('content.cookies.accept', 'all', 'chrome-devtools://*')
config.set('content.cookies.accept', 'all', 'devtools://*')
config.set('content.headers.accept_language', '', 'https://matchmaker.krunker.io/*')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}) AppleWebKit/{webkit_version} (KHTML, like Gecko) {upstream_browser_key}/{upstream_browser_version} Safari/{webkit_version}', 'https://web.whatsapp.com/')
config.set('content.headers.user_agent', 'Mozilla/5.0 ({os_info}; rv:133.0) Gecko/20100101 Firefox/133.0', 'https://accounts.google.com/*')
config.set('content.images', True, 'chrome-devtools://*')
config.set('content.images', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome-devtools://*')
config.set('content.javascript.enabled', True, 'devtools://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')
config.set('content.local_content_can_access_remote_urls', True, 'file:///home/georgi/.local/share/qutebrowser/userscripts/*')
config.set('content.local_content_can_access_file_urls', False, 'file:///home/georgi/.local/share/qutebrowser/userscripts/*')
c.completion.shrink = True
c.colors.hints.fg = '#E49B5D'
c.colors.hints.bg = '#292522'
c.colors.hints.match.fg = '#ECE1D7'
c.fonts.default_family = ['Iosevka SS16 Bold']
c.fonts.default_size = '12pt'
config.bind('tH', 'config-cycle tabs.show multiple never')
config.bind('V', 'hint links spawm run mpv {hint-url}')
config.bind('ab', 'bookmark-add')
config.bind('ao', 'set-cmd-text -s :bookmark-load')

c.url.searchengines = {
    "DEFAULT": "https://www.google.com/search?q={}",
    "am": "https://amazon.com/s?k={}",
    "gh": "https://github.com/search?q={}",
}
c.url.default_page = "about:blank"
c.url.start_pages = ["about:blank"]
c.auto_save.session = True
c.tabs.show = "switching"
c.downloads.location.directory = "/home/georgi/Downloads"
config.bind("<Ctrl-h>", "fake-key <Backspace>", "insert")
config.bind("<Ctrl-a>", "fake-key <Home>", "insert")
config.bind("<Ctrl-e>", "fake-key <End>", "insert")
config.bind("<Ctrl-b>", "fake-key <Left>", "insert")
config.bind("<Mod1-b>", "fake-key <Ctrl-Left>", "insert")
config.bind("<Ctrl-f>", "fake-key <Right>", "insert")
config.bind("<Mod1-f>", "fake-key <Ctrl-Right>", "insert")
config.bind("<Ctrl-p>", "fake-key <Up>", "insert")
config.bind("<Ctrl-n>", "fake-key <Down>", "insert")
config.bind("<Mod1-d>", "fake-key <Ctrl-Delete>", "insert")
config.bind("<Ctrl-d>", "fake-key <Delete>", "insert")
config.bind("<Ctrl-w>", "fake-key <Ctrl-Backspace>", "insert")
config.bind("<Ctrl-u>", "fake-key <Shift-Home><Delete>", "insert")
config.bind("<Ctrl-k>", "fake-key <Shift-End><Delete>", "insert")
config.source('colorscheme.py')
