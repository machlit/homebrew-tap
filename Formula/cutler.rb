class Cutler < Formula
  version "0.5.1"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "b01cb0cb24f38ec6e5c2c2ad75fedc1e70cfd85743ab878a91773c5c0a6c0f9c"
  license "MIT"

  depends_on :macos

  def install
    man1.install "man/man1/cutler.1"
    bin.install "bin/cutler"
    generate_completions_from_executable(bin/"cutler", "completion")
  end
end
