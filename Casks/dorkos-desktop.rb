cask "dorkos-desktop" do
  version "0.139.0"
  sha256 "93522916366c83db2e374f44eca12ba41d84437783cdec8acd04aa7f521a04b8"

  url "https://github.com/dork-labs/dorkos/releases/download/v#{version}/DorkOS-#{version}-arm64.dmg",
      verified: "github.com/dork-labs/dorkos/"
  name "DorkOS"
  desc "Mission control for coding agents"
  homepage "https://dorkos.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "DorkOS.app"

  zap trash: [
    "~/Library/Application Support/DorkOS",
    "~/Library/Caches/com.dorkos.desktop",
    "~/Library/Caches/com.dorkos.desktop.ShipIt",
    "~/Library/HTTPStorages/com.dorkos.desktop",
    "~/Library/Logs/DorkOS",
    "~/Library/Preferences/com.dorkos.desktop.plist",
    "~/Library/Saved Application State/com.dorkos.desktop.savedState",
  ]
end
