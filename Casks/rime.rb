cask "rime" do
  version "1.0.0"
  sha256 "6df80b4977ceeb79e75a01dbd807e44cf4bff528201c1f8c5fa550f28a367c52"

  url "https://github.com/Yvsleyen00941/Rime/releases/download/v1.0.0/Rime-macOS-v1.0.0.zip"
  name "Rime"
  desc "Distraction-free macOS PDF reader with frosted-ice focus backdrop"
  homepage "https://yorben.me"

  depends_on macos: ">= :sonoma"

  app "Rime.app"

  zap trash: [
    "~/Library/Preferences/com.yorben.Rime.plist",
    "~/Library/Saved Application State/com.yorben.Rime.savedState",
  ]
end
