cask "detour" do
  version "1.0.0"
  sha256 "5b62d1d9410f8ed3f0b401bff3b8ff52e03bb8a77245a9e3c040e82c2ee5d88c"

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
