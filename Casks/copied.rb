cask "copied" do
  version "1.3.3,15"
  sha256 "dbc0036dfc6bb931ff01a08735998ec6796ca9a2c9e62f6c404e3094c5a394ed"

  url "https://github.com/MagnetonIO/copied-app/releases/download/v#{version.csv.first}/Copied-v#{version.csv.first}-build#{version.csv.second}.pkg"
  name "Copied"
  desc "Clipboard manager with search, lists, and iCloud sync"
  homepage "https://www.getcopied.app/"

  livecheck do
    url "https://www.getcopied.app/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :sequoia

  pkg "Copied-v#{version.csv.first}-build#{version.csv.second}.pkg"

  uninstall quit:    "com.magneton.copied",
            pkgutil: "com.magneton.copied.installer"

  zap trash: [
    "~/Library/Application Support/Copied",
    "~/Library/Caches/com.magneton.copied",
    "~/Library/Preferences/com.magneton.copied.plist",
    "~/Library/Saved Application State/com.magneton.copied.savedState",
  ]
end
