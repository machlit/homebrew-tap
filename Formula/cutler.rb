class Cutler < Formula
  version "0.2.6"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "7bf3705fe522ad417e8f1251960b0b48593e40e9bda195f161cfaa764c8f322b"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
