class Cutler < Formula
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v0.1.4/cutler-v0.1.4-darwin-arm64.zip"
  sha256 "763ec06e58bc9dd27131ae72fc9685171722d5aa7b458032345d2aad5cc4d8ef"
  license "MIT"

  depends_on macos: :sonoma # macOS 14

  def install
    bin.install "cutler"
  end
end
