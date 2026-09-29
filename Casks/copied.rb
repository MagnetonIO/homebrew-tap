cask "copied" do
  version "1.3.3,14"
  sha256 "48b6bc5299bbf693281df37eff38c50a379a43256844971c4999b16ad2e76fdf"

  url "https://github.com/MagnetonIO/copied-app/releases/download/v#{version.csv.first}/Copied-v#{version.csv.first}-build#{version.csv.second}.pkg"
  name "Copied"
  desc "Clipboard manager with search, lists, and iCloud sync"
  homepage "https://www.getcopied.app/"

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
