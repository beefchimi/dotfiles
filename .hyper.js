"use strict";

// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

// const hyperlineHeight = 32;
const hyperFontStack =
  '"BlexMono Nerd Font", "Hack Nerd Font Mono", "MesloLGS NF", "DankMono Nerd Font", monospace';

module.exports = {
  config: {
    // Styles
    fontSize: 18,
    fontFamily: hyperFontStack,
    // fontWeight: 'normal',
    // fontWeightBold: 'bold',
    lineHeight: 1,
    letterSpacing: 0,
    // cursorColor: 'rgba(248,28,229,0.8)',
    // cursorAccentColor: '#000',
    // cursorShape: 'BLOCK',
    cursorBlink: true,
    // foregroundColor: '#fff',
    // backgroundColor: '#000',
    // borderColor: '#333',
    selectionColor: "rgba(248,28,229,0.3)",
    windowSize: [640, 960],
    padding: 16,
    // padding: `12px 14px ${hyperlineHeight}px 12px`,
    // css: `.line{height: ${hyperlineHeight}px; font-size: 14px;}`,
    // termCSS: '',
    // workingDirectory: '',
    // showHamburgerMenu: '',
    // showWindowControls: '',
    // commands: ["artii 'beefchimi' --font slant | lolcat -a -d 1"],
    webGLRenderer: true,
    disableLigatures: false,
    verminal: {
      fontFamily: hyperFontStack,
      fontSize: 18,
      backgroundColor: "rgba(0,0,0,1)",
    },
    hyperBorder: {
      animate: true,
      borderRadiusInner: "8px",
      adminBorderColors: ["random", "random"],
      blurredColors: ["salmon", "purple"],
      blurredAdminColors: ["yellow", "blue"],
    },
    /*
    hyperline: {
      plugins: ['ip', 'network', 'memory', 'cpu'],
    },
    */
  },
  plugins: [
    "verminal",
    "hyperborder",
    "hyperpower",
    // TODO: Hyperline causes massive slowdowns on 3.1.0
    // "hyperline",
    "hypercwd",
    "hyperterm-dibdabs",
  ],
};
//# sourceMappingURL=config-default.js.map
