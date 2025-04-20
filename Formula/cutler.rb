class Cutler < Formula
  version "0.4.2"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "27ec6fdf40295fb483595e5cdead117cd576a3a35522a1d6b04ebca432cba9c0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
