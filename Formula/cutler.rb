class Cutler < Formula
  version "0.2.2"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "447ebef073679ed43498bb3238bf822859af3408d7b2b23ba4959c2d2319f4e2"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
