cask "cockpit" do
  version "1.0.0"
  sha256 "7c79da1430e5728548ac7591e2c3ecb7abf23182297984fa344b3cf07cd0d27e"

  url "https://github.com/Yvsleyen00941/Cockpit/releases/download/v1.0.0/Cockpit-macOS-v1.0.0.zip"
  name "Cockpit"
  desc "Unified daily productivity heads-up display for macOS and iPadOS"
  homepage "https://yorben.me"

  depends_on macos: ">= :sonoma"

  app "Cockpit.app"

  zap trash: [
    "~/Library/Preferences/be.yorben.controlcenter.helper.plist",
    "~/Library/Application Support/ControlCenter",
  ]
end
