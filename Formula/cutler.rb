class Cutler < Formula
  version "0.4.4"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "1b9c1be296b8febe6c1213fabf332f6dc52a1e1c0a70a6cbd235db17887c5de3"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
