class Cutler < Formula
  version "0.2.0"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "0188c95114d967a090356800ed2ae155e764d41700795fff9204e1712f24e76b"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
