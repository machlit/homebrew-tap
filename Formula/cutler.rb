class Cutler < Formula
  version "0.1.6"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "159fa679dc8306582f53a5bad176f0476ba31ea355044f240911490cc95ef39f"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
