class Cutler < Formula
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v0.1.2/cutler-v0.1.2-darwin-arm64.zip"
  sha256 "6d2e2ec9c4603920be5dc518f33478999551a98892f850924d16a739fc8c6b3f"
  license "MIT"

  depends_on macos: ">= :sonoma" # macOS 14

  def install
    bin.install "cutler"
  end
end
