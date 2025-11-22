cask "boring-notch@rc" do
  version "2.7.0"
  sha256 "ffa5d94779b47fb5707e5c5a9d86a4515c91cb6c19183ad97b2e44d6637a6528"

  url "https://github.com/TheBoredTeam/boring.notch/releases/download/v2.7.0/boringNotch.dmg"
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
