class Cutler < Formula
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v0.1.3/cutler-v0.1.3-darwin-arm64.zip"
  sha256 "844fcd36a2baacff4240b7de0f059f565d25ed4f02e4f8cf483ecb0ceb81711c"
  license "MIT"

  depends_on macos: :sonoma # macOS 14

  def install
    bin.install "cutler"
  end
end
