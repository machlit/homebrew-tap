# frozen_string_literal: true

# Homebrew formula for defaults-rs: Drop-in replacement for the `defaults` tool on macOS.
class Drs < Formula
  version '0.5.1'
  desc 'Drop-in replacement for the `defaults` tool on macOS.'
  homepage 'https://github.com/hitblast/defaults-rs'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/defaults-rs/releases/download/v#{version}/drs-aarch64-apple-darwin.zip"
    sha256 '14fa9fc8f58af2f9063984dbb00c31683c3a95766c8c2ec71f36a6bb7d7abc33'
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
