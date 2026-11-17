cask "detour" do
  version "1.1.0"
  sha256 "d919d06a29311c8e275cc5e851cb4c3fe035f68be30e26bfad8e87ad4331ef43"

  url "https://github.com/ten50nl/detour/releases/download/v#{version}/Detour-#{version}.dmg"
  name "Detour"
  desc "Opens every link in the right browser and profile"
  homepage "https://detour.ten50.nl"

  depends_on macos: ">= :sequoia"

  app "Detour.app"

  uninstall quit: "nl.ten50.detour"

  zap trash: [
    "~/Library/Application Support/Detour",
    "~/Library/Caches/Detour",
    "~/Library/Preferences/nl.ten50.detour.plist",
  ]
end
