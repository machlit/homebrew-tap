class Cutler < Formula
  version "0.2.7"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "a39e201d0dc6d5de938e6cc3628a426e2f893f68a303e3b2de527530ecc9e175"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
