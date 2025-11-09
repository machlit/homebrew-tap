# frozen_string_literal: true

# Homebrew formula for defaults-rs: Drop-in replacement for the `defaults` tool on macOS.
class Drs < Formula
  version '0.4.1'
  desc 'Drop-in replacement for the `defaults` tool on macOS.'
  homepage 'https://github.com/hitblast/defaults-rs'

  if Hardware::CPU.arm?
    url "https://github.com/hitblast/defaults-rs/releases/download/v#{version}/drs-aarch64-apple-darwin.zip"
    sha256 'eb6c79fdeea99bbaf13e8c74133524822bf8e427b13633a983ea8263450e606a'
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
