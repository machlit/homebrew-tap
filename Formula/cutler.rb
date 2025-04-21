class Cutler < Formula
  version "0.4.3"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "5826482836c5fa5cab08cfa09ae9a024a22fd5995563c5d87e6a182b29062b49"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
