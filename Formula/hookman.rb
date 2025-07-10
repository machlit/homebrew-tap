# frozen_string_literal: true

# Homebrew formula for Hookman: Add hooks to your Git repository using a TOML file.
class Hookman < Formula
  version '1.0.0'
  desc 'Add hooks to your Git repository using a TOML file.'
  homepage 'https://github.com/hitblast/hookman'

  on_arm do
    url "https://github.com/hitblast/hookman/releases/download/v#{version}/hookman-v#{version}-darwin-arm64.zip"
    sha256 'bff37ba180494e24f3297500d08a9e296cc779ac06afa285f6d9e97b148e4ccc'
  end

  on_intel do
    url "https://github.com/hitblast/hookman/releases/download/v#{version}/hookman-v#{version}-darwin-x86_64.zip"
    sha256 '731d875171dbece2885568dc206b6f48ae3145f9fae7f9ca30e862a45000886f'
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/hookman.1'
    bin.install 'bin/hookman'
  end
end
