class Cutler < Formula
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v0.1.5/cutler-v0.1.5-darwin-arm64.zip"
  sha256 "78607f241a41b15347662d32d113b2681333ade22d9fdf9e9ffa58abc891f079"
  license "MIT"

  depends_on macos: :sonoma # macOS 14

  def install
    bin.install "cutler"
  end
end
