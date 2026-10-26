class Cockpit < Formula
  desc "Unified daily productivity HUD for macOS and iPadOS (Calendar, Music, Notion, Mail)"
  homepage "https://yorben.me"
  url "https://github.com/Yvsleyen00941/Cockpit/archive/refs/tags/v1.0.0.tar.gz"
  version "1.0.0"
  license "MIT"

  depends_on :macos => :sonoma

  def install
    prefix.install Dir["*"]
  end

  test do
    assert_predicate prefix/"README.md", :exist?
  end
end
