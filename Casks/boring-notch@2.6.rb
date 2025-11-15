cask "boring-notch@2.6" do
  version "2.6"
  sha256 "1a58ec27e5de30faf107fdf8b77575b1c39ace69e77b1330fc4ed6562bf2badc"

  url "https://github.com/TheBoredTeam/boring.notch/releases/download/v#{version}/WolfPainting.dmg"
  name "Boring Notch"
  desc "Not so boring notch That Rocks 🎸🎶 "
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
