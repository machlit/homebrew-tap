# frozen_string_literal: true

# Homebrew formula for defaults-rs: Near drop-in replacement for the macOS defaults CLI with API bindings for Rust.
class Drs < Formula
  version '0.3.4'
  desc 'Near drop-in replacement for the macOS defaults CLI with API bindings for Rust.'
  homepage 'https://github.com/hitblast/defaults-rs'

  on_arm do
    url "https://github.com/hitblast/defaults-rs/releases/download/v#{version}/drs-v#{version}-darwin-arm64.zip"
    sha256 'f81be77f67a7d141d0b6d4e091eb03a114ed3ed55d487f2008fdfdf81c03cbeb'
  end

  on_intel do
    url "https://github.com/hitblast/defaults-rs/releases/download/v#{version}/drs-v#{version}-darwin-x86_64.zip"
    sha256 '6c9a59a858f031333c9c5a402253748e40c103e4f6c3a101c5ad0a60a9067081'
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/drs.1'
    bin.install 'bin/drs'
  end
end
