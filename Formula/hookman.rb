# frozen_string_literal: true

# Homebrew formula for Hookman: Add hooks to your Git repository using a TOML file.
class Hookman < Formula
  version '0.1.5'
  desc 'Add hooks to your Git repository using a TOML file.'
  homepage 'https://github.com/hitblast/hookman'

  on_arm do
    url "https://github.com/hitblast/hookman/releases/download/v#{version}/hookman-v#{version}-darwin-arm64.zip"
    sha256 '3d00fee17a06cb08ce61a02111bc12128352cc1e67ac512f1f92823abcce9ff9'
  end

  on_intel do
    url "https://github.com/hitblast/hookman/releases/download/v#{version}/hookman-v#{version}-darwin-x86_64.zip"
    sha256 '5ba9051b988bb1fa666ed0138e4c3a2e0811951b75446fb89a513316e11441b7'
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/hookman.1'
    bin.install 'bin/hookman'
  end
end
