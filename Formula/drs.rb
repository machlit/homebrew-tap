# frozen_string_literal: true

# Homebrew formula for defaults-rs: Near drop-in replacement for the macOS defaults CLI with API bindings for Rust.
class Drs < Formula
  version '0.1.9'
  desc 'Near drop-in replacement for the macOS defaults CLI with API bindings for Rust.'
  homepage 'https://github.com/hitblast/defaults-rs'

  on_arm do
    url "https://github.com/hitblast/defaults-rs/releases/download/v#{version}/drs-v#{version}-darwin-arm64.zip"
    sha256 '802420a4a7c47816451f1301f98f6c71d313c668f620b0462bed4584e5f2ee97'
  end

  on_intel do
    url "https://github.com/hitblast/defaults-rs/releases/download/v#{version}/drs-v#{version}-darwin-x86_64.zip"
    sha256 'fc21b304145e740fbbe6e5db5f4de7d3f80bbf58d142264e39e15cd10d289b18'
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/drs.1'
    bin.install 'bin/drs'
  end
end
