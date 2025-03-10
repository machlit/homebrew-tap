class Cutler < Formula
  version "0.1.7"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "56ae7c352126bdde7e41f9024b848e95d72a831348344e72c7a72605a6d0d676"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
