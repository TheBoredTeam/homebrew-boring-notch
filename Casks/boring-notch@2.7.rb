cask "boring-notch@2.7" do
  version "2.7-rc.3"
  sha256 "853f6d8e405a6d730e524f2e864af1731b52cd191375f506678a62a63814bb81"

  url "https://github.com/TheBoredTeam/boring.notch/releases/download/v#{version}/boringNotch.dmg"
  name "Boring Notch"
  desc "Not so boring notch That Rocks 🎸🎶 "
  homepage "https://github.com/TheBoredTeam/boring.notch"

  livecheck do
    url :url
    strategy :github_latest
  end
  # auto_updates true
  depends_on macos: ">= :sonoma"

  app "boringNotch.app"

  zap trash: [
    "~/Library/Application Scripts/theboringteam.boringnotch/",
    "~/Library/Containers/theboringteam.boringnotch/",
  ]
end
