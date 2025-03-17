class Cutler < Formula
  version "0.2.4"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "9624b94e0920c0905942710454bddd14ec10142e3f2cd7ebf5857f6c7480800e"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
