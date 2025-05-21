# frozen_string_literal: true

# Homebrew formula for Hookman: Add hooks to your Git repository using a TOML file.
class Hookman < Formula
  version '0.1.2'
  desc 'Add hooks to your Git repository using a TOML file.'
  homepage 'https://github.com/hitblast/hookman'
  url "https://github.com/hitblast/hookman/releases/download/v#{version}/hookman-v#{version}-darwin-arm64.zip"
  sha256 '7dab409a1de34ec321e85938d64bb04599f09f801316fc78e459b0f4edabbdb7'
  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/hookman.1'
    bin.install 'bin/hookman'
  end
end
