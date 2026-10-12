cask "dorkos-desktop" do
  version "0.109.0"
  sha256 "478c61016b70db453d9cd7c1ddd56755f3d467d77efdcb80d8a2ae9af6e6f549"

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
