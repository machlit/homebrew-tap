class Cutler < Formula
  version "0.3.0"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "0f6f767b05570b550aa8551a223de2fbee1d69518083d962f528b3ee9ce18e16"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
