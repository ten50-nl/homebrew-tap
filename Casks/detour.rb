cask "detour" do
  version "1.5.0"
  sha256 "5a292f5375bfb37a1ffce28bd1605bf09c9145fa4d7cefaa775d4398b090c6c4"

  url "https://github.com/ten50-nl/detour/releases/download/v#{version}/Detour-#{version}.dmg"
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
