# frozen_string_literal: true

# Homebrew formula for Hookman: Add hooks to your Git repository using a TOML file.
class Hookman < Formula
  version '1.0.1'
  desc 'Add hooks to your Git repository using a TOML file.'
  homepage 'https://github.com/hitblast/hookman'

  on_arm do
    url "https://github.com/hitblast/hookman/releases/download/v#{version}/hookman-v#{version}-darwin-arm64.zip"
    sha256 'edef2b8267b68d398325bce36a37dca2cc5557c35b22fe99c595c98ec6425545'
  end

  on_intel do
    url "https://github.com/hitblast/hookman/releases/download/v#{version}/hookman-v#{version}-darwin-x86_64.zip"
    sha256 'f305a9ec1e53a27e08208c35659dc1cb463e31d463e4d07d8a5eea3e28bfd4ff'
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/hookman.1'
    bin.install 'bin/hookman'
  end
end
