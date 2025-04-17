class Cutler < Formula
  version "0.4.0"
  desc "Declarative macOS settings management at your fingertips, with speed."
  homepage "https://github.com/hitblast/cutler"
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 "b8de897e5a1328d489d3ada623d25294d9a5234f90197316010fcf1bf43e3541"
  license "MIT"

  depends_on :macos

  def install
    bin.install "cutler"
  end
end
