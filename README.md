# Homebrew Tap for DorkOS

Install the DorkOS CLI via Homebrew:

```bash
brew tap dork-labs/dorkos
brew install dorkos
```

Or in a single command:

```bash
brew install dork-labs/dorkos/dorkos
```

### Desktop app (macOS, Apple Silicon)

The DorkOS desktop app ships as a cask, separate from the CLI formula above:

```bash
brew install --cask dork-labs/dorkos/dorkos-desktop
```

The desktop app is Apple Silicon only today and updates itself in place (`auto_updates true`) — `brew upgrade` is a no-op after the first install unless you're reinstalling from scratch.

## What is DorkOS?

DorkOS is the operating system for autonomous AI agents: the coordination layer (scheduling, communication, discovery, memory) for running coding agents. It offers a web-based cockpit and REST/SSE API for Claude Code, Codex, and OpenCode, plus a native macOS desktop app.

Learn more at [dorkos.ai](https://dorkos.ai).

## Updating

Homebrew will check for updates when you run `brew update`. To upgrade the CLI:

```bash
brew upgrade dorkos
```

The desktop cask (`dorkos-desktop`) is also picked up by `brew upgrade --cask`, though the app self-updates via its built-in updater in the meantime.

## Troubleshooting

If you encounter issues, try:

```bash
# Untap and re-tap
brew untap dork-labs/dorkos
brew tap dork-labs/dorkos

# Reinstall
brew reinstall dorkos
```

## Alternative Installation

You can also install DorkOS directly via npm:

```bash
npm install -g dorkos
```

Or via the install script:

```bash
curl -fsSL https://dorkos.dev/install | bash
```

## License

MIT
