class Cutler < Formula
  version "0.1.4"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "763ec06e58bc9dd27131ae72fc9685171722d5aa7b458032345d2aad5cc4d8ef"
  license "MIT"

  depends_on macos: :sonoma # macOS 14

  def install
    bin.install "cutler"
  end
end
