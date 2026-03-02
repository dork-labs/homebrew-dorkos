# Homebrew Tap for DorkOS

Install DorkOS via Homebrew:

```bash
brew tap dork-labs/dorkos
brew install dorkos
```

Or in a single command:

```bash
brew install dork-labs/dorkos/dorkos
```

## What is DorkOS?

DorkOS is an OS-layer for AI agents, providing scheduling, memory, communication, and coordination infrastructure. It offers a web-based interface and REST/SSE API for Claude Code, built with the Claude Agent SDK.

Learn more at [dorkos.dev](https://dorkos.dev).

## Updating

Homebrew will check for updates when you run `brew update`. To upgrade DorkOS:

```bash
brew upgrade dorkos
```

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
