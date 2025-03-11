class Cutler < Formula
  version "0.1.8"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "1ae440005928e8305949f36016c92a1b949864d2ce135cf11ad9a25faf9a85ff"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
