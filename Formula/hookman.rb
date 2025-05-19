# frozen_string_literal: true

# Homebrew formula for Hookman: Add hooks to your Git repository using a TOML file.
class Hookman < Formula
  version '0.1.1'
  desc 'Add hooks to your Git repository using a TOML file.'
  homepage 'https://github.com/hitblast/hookman'
  url "https://github.com/hitblast/hookman/releases/download/v#{version}/hookman-v#{version}-darwin-arm64.zip"
  sha256 '867565e7f016f1cb22242e6173b6f6cfe939fd0468f0c9ce6dc2b5c8ebc13b29'
  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/hookman.1'
    bin.install 'bin/hookman'
  end
end
