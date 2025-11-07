# frozen_string_literal: true

# Homebrew formula for defaults-rs: Drop-in replacement for the `defaults` tool on macOS.
class Drs < Formula
  version '0.3.6'
  desc 'Drop-in replacement for the `defaults` tool on macOS.'
  homepage 'https://github.com/hitblast/defaults-rs'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/defaults-rs/releases/download/v#{version}/drs-aarch64-apple-darwin.zip"
    sha256 '4ab83e8565f8f1788cd3c6038545338ba7110ed0516216a5aaee5e5224984b95'
  else
    odie "drs is only available for macOS ARM (Apple Silicon)."
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/drs.1'
    bin.install 'bin/drs'
  end
end
