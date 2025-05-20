# frozen_string_literal: true

# Homebrew formula for Cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.6.4'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/hitblast/cutler'
  url "https://github.com/hitblast/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
  sha256 '70ef1d665bdefdc05f7b53106f92715ce7ee785c9e72490bf2cb7a7dac98aea2'
  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/cutler.1'
    bin.install 'bin/cutler'
    generate_completions_from_executable(bin / 'cutler', 'completion')
  end
end
