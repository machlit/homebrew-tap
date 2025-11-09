# frozen_string_literal: true

# Homebrew formula for defaults-rs: Drop-in replacement for the `defaults` tool on macOS.
class Drs < Formula
  version '0.4.0'
  desc 'Drop-in replacement for the `defaults` tool on macOS.'
  homepage 'https://github.com/hitblast/defaults-rs'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/defaults-rs/releases/download/v#{version}/drs-aarch64-apple-darwin.zip"
    sha256 '8dfeb7395283425b622fd62f5e1a28d983889e94635b78f9fe17fdb638a5cc9d'
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
