class Cutler < Formula
  version "0.1.9"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "fdd0d5cd5c820073f032c6ea11dc9733fa7c61841916fafefdc9f22c7c832872"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
