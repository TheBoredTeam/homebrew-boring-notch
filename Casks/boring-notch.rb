cask "boring-notch" do
  version "2.7"
  sha256 "dc5ac939ac9ddbcac4cc00eb10a1d3a2fc89f44107f631b7fa0d95c4d4d057a7"

  url "https://github.com/TheBoredTeam/boring.notch/releases/download/v2.7/boringNotch.dmg"
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
