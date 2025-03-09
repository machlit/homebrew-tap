class Cutler < Formula
  def version
    "v0.1.2"
  end

  sha256 "6d2e2ec9c4603920be5dc518f33478999551a98892f850924d16a739fc8c6b3f"

  url "https://github.com/hitblast/cutler/releases/download/#{version}/cutler-#{version}-darwin-arm64.zip"
  name "cutler"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"

  depends_on macos: ">= :sonoma" # macOS 14

  def install
    bin.install "cutler-#{version}-darwin-arm64/cutler"
  end
end
