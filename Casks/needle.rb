cask "needle" do
  version "1.0.0"
  sha256 "1314ae09b27c1eb42ab693d9dfce47748d40c265f926e62d42ff87cd3510c345"

  url "https://github.com/Yvsleyen00941/Needle/releases/download/v#{version}/Needle-macOS-v#{version}.zip"
  name "Needle"
  desc "Now-playing cover in the empty corner beside the Dock"
  homepage "https://yorben.me/#needle"

  depends_on macos: :tahoe

  app "Needle.app"

  zap trash: [
    "~/Library/Caches/com.yorben.needle",
    "~/Library/Preferences/com.yorben.needle.plist",
  ]
end
