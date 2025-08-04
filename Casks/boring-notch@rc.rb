cask "boring-notch@rc" do
  version "2.7-rc.2"
  sha256 "d2b6a14165077bdffe96b1b2f233bd058431c0f1951b7f1e7b25c24ea18b7f05"

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
