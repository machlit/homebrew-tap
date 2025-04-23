class Cutler < Formula
  version "0.4.5"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "9ef60a29b9ba69266eb32e3f6549d90290168b27a767c101b66457f2d9ae85e5"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
