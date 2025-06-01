# frozen_string_literal: true

# Homebrew formula for Hookman: Add hooks to your Git repository using a TOML file.
class Hookman < Formula
  version '0.1.4'
  desc 'Add hooks to your Git repository using a TOML file.'
  homepage 'https://github.com/hitblast/hookman'

  on_arm do
    url "https://github.com/hitblast/hookman/releases/download/v#{version}/hookman-v#{version}-darwin-arm64.zip"
    sha256 '5f63a3d102e5f4529772b45a73afb2706d8642f9b73004125a8f9c1e55c6a9c6'
  end

  on_intel do
    url "https://github.com/hitblast/hookman/releases/download/v#{version}/hookman-v#{version}-darwin-x86_64.zip"
    sha256 '756ed3c2c4467383531b428ee14c4773af1e6ecfe88ed0fa4425cd19bf7f6707'
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/hookman.1'
    bin.install 'bin/hookman'
  end
end
