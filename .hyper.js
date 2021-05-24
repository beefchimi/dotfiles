// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

const hyperlineHeight = 32;
const hyperFontStack =
  '"BlexMono Nerd Font", "Hack Nerd Font Mono", "MesloLGS NF", "DankMono Nerd Font", monospace';

module.exports = {
  config: {
    // Styles
    fontSize: 18,
    fontFamily: hyperFontStack,
    lineHeight: 1,
    letterSpacing: 0,
    cursorBlink: true,
    selectionColor: "rgba(248,28,229,0.3)",
    windowSize: [640, 960],
    padding: `12px 14px ${hyperlineHeight}px 12px`,
    css: `.line{height: ${hyperlineHeight}px; font-size: 14px;}`,
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
  plugins: ["verminal", "hyperborder", "hyperpower", "hyperline", "hypercwd"],
};
