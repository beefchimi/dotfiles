// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

const hyperlineHeight = 32;
const hyperFontStack =
  '"BlexMono Nerd Font", "Hack Nerd Font Mono", "DankMono Nerd Font", monospace';

module.exports = {
  config: {
    updateChannel: "stable",
    // Styles
    fontSize: 18,
    fontFamily: hyperFontStack,
    fontWeight: "normal",
    fontWeightBold: "bold",
    lineHeight: 1,
    letterSpacing: 0,
    cursorColor: "rgba(248,28,229,0.8)",
    cursorAccentColor: "#000",
    cursorShape: "BLOCK",
    cursorBlink: true,
    foregroundColor: "#fff",
    backgroundColor: "#000",
    selectionColor: "rgba(248,28,229,0.3)",
    borderColor: "#333",
    windowSize: [640, 960],
    padding: `12px 14px ${hyperlineHeight}px 12px`,
    colors: {
      black: "#000000",
      red: "#C51E14",
      green: "#1DC121",
      yellow: "#C7C329",
      blue: "#0A2FC4",
      magenta: "#C839C5",
      cyan: "#20C5C6",
      white: "#C7C7C7",
      lightBlack: "#686868",
      lightRed: "#FD6F6B",
      lightGreen: "#67F86F",
      lightYellow: "#FFFA72",
      lightBlue: "#6A76FB",
      lightMagenta: "#FD7CFC",
      lightCyan: "#68FDFE",
      lightWhite: "#FFFFFF",
    },
    css: `.line{height: ${hyperlineHeight}px; font-size: 14px;}`,
    termCSS: "",
    // if you're using a Linux setup which show native menus, set to false
    // default: `true` on Linux, `true` on Windows, ignored on macOS
    showHamburgerMenu: "",
    // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
    showWindowControls: "",
    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    //
    // Windows
    // - Make sure to use a full path if the binary name doesn't work
    // - Remove `--login` in shellArgs
    //
    // Bash on Windows
    // - Example: `C:\\Windows\\System32\\bash.exe`
    //
    // PowerShell on Windows
    // - Example: `C:\\WINDOWS\\System32\\WindowsPowerShell\\v1.0\\powershell.exe`
    shell: "",
    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: ["--login"],
    // for environment variables
    env: {},
    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,
    // set to `false` for no bell
    bell: "SOUND",
    // URL to custom bell
    // bellSoundURL: 'http://example.com/bell.mp3',
    copyOnSelect: false,
    // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
    // selection is present (`true` by default on Windows and disables the context menu feature)
    // quickEdit: true,

    // for advanced config flags please refer to https://hyper.is/#cfg

    // commands: ["artii 'beefchimi' --font slant | lolcat -a -d 1"],
    verminal: {
      fontFamily: hyperFontStack,
      fontSize: 18,
      backgroundColor: "rgba(0,0,0,1)",
    },
    hyperBorder: {
      animate: true,
      borderWidth: "2px",
      // blurredColors: ["#e0389f", "#f7b740"]
    },
    hyperline: {
      plugins: ["ip", "network", "memory", "cpu"],
    },
  },

  plugins: [
    "verminal",
    // "hyper-startup",
    "hyperborder",
    "hyperpower",
    // "hyper-sync-settings",
    "hyperline",
    "hypercwd",
  ],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  // localPlugins: ["test"],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  },
};
