# frozen_string_literal: true

# Homebrew formula for defaults-rs: Drop-in replacement for the `defaults` tool on macOS.
class Drs < Formula
  version '0.6.3'
  desc 'Drop-in replacement for the `defaults` tool on macOS.'
  homepage 'https://github.com/machlit/defaults-rs'

  if Hardware::CPU.arm?
    url "https://github.com/machlit/defaults-rs/releases/download/v#{version}/drs-aarch64-apple-darwin.zip"
    sha256 '59a5492e44ecb2b68f227632a69ce6e49428b33e73d9b109125a5b29d02c7702'
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
