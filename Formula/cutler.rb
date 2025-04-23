class Cutler < Formula
  version "0.4.6"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "4997ddfdb86a0e63792fae61805e8e059af9a7a14b8bba0355cd8045999c58c6"
  license "MIT"

  depends_on :macos

  def install
    man1.install "man/cutler.1"
    bin.install bin/"cutler"
  end
end
