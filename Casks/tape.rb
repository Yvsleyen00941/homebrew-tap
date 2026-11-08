cask "tape" do
  version "1.0.0"
  sha256 "21f71f98a0528caf2c3afdb296dde80dcc69cdb289b4f72373d746c13e60ffd2"

  url "https://github.com/Yvsleyen00941/Tape/releases/download/v#{version}/Tape-macOS-v#{version}.zip"
  name "Tape"
  desc "Stock ticker in the empty corner beside the Dock"
  homepage "https://yorben.me/#tape"

  depends_on macos: :tahoe

  app "Tape.app"

  zap trash: [
    "~/Library/Application Support/Tape",
    "~/Library/Caches/com.yorben.tape",
    "~/Library/Preferences/com.yorben.tape.plist",
  ]
end
