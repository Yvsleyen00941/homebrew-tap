cask "needle" do
  version "1.0.0"
  sha256 "88387a87a4c52df20cdccf851b48fe2dd464cf3f2df7a93314114d9c76178c2b"

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
