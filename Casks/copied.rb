cask "copied" do
  version "1.3.3"
  sha256 "1b6acd4e2024645303e8a721fde2c1551ad0f7b5191aaf4a994ffa3fb0147a60"

  url "https://github.com/MagnetonIO/copied-app/releases/download/v#{version}/Copied-v#{version}.pkg"
  name "Copied"
  desc "Clipboard manager with search, lists, and iCloud sync"
  homepage "https://www.getcopied.app/"

  depends_on macos: :sequoia

  pkg "Copied-v#{version}.pkg"

  uninstall quit:    "com.magneton.copied",
            pkgutil: "com.magneton.copied.installer"

  zap trash: [
    "~/Library/Application Support/Copied",
    "~/Library/Caches/com.magneton.copied",
    "~/Library/Preferences/com.magneton.copied.plist",
    "~/Library/Saved Application State/com.magneton.copied.savedState",
  ]
end
