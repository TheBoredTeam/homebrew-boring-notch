cask "boring-notch@rc" do
  version "2.7.2"
  sha256 "da0af83c617c6b67aae7479a7c3e886d19657adbac607d3b103cd147c5bfd0aa"

  url "https://github.com/TheBoredTeam/boring.notch/releases/download/v2.7.2/boringNotch.dmg"
  name "Boring Notch RC"
  desc "Not so boring notch That Rocks 🎸🎶 (Release Candidate)"
  homepage "https://github.com/TheBoredTeam/boring.notch"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "boringNotch.app"

  zap trash: [
    "~/Library/Application Scripts/theboringteam.boringnotch/",
    "~/Library/Containers/theboringteam.boringnotch/",
  ]
end
