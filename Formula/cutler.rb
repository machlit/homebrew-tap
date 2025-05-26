# frozen_string_literal: true

# Homebrew formula for Cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.6.5'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/hitblast/cutler'
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 '5f2aa8a1fd1bc597c49faffbf936ee9bd5f3522159a9023a549270882ed928c6'
  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/cutler.1'
    bin.install 'bin/cutler'
    generate_completions_from_executable(bin / 'cutler', 'completion')
  end
end
