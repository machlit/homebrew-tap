# frozen_string_literal: true

# Homebrew formula for defaults-rs: Drop-in replacement for the `defaults` tool on macOS.
class Drs < Formula
  version '0.6.0'
  desc 'Drop-in replacement for the `defaults` tool on macOS.'
  homepage 'https://github.com/machlit/defaults-rs'

  if Hardware::CPU.arm?
    url "https://github.com/machlit/defaults-rs/releases/download/v#{version}/drs-aarch64-apple-darwin.zip"
    sha256 'a5d7bcfda5190e96c95e90b6c27b5884d27d4f3cc4329823ef0f6f22883d6130'
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
