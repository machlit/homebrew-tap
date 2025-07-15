# frozen_string_literal: true

# Homebrew formula for Cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.9.5'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/cutlercli/cutler'

  on_arm do
    url "https://github.com/cutlercli/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
    sha256 '8bfbc10f868b0124c991ecb728b6e999adece5ea52d7d7a56da50ed70de8f183'
  end

  on_intel do
    url "https://github.com/cutlercli/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-x86_64.zip"
    sha256 '8c5a9179188e53628164021429d91b219cf496c4afef03d800801823b7ffa1bd'
  end

  license 'MIT'

  depends_on :macos

  def install
    man1.install 'man/man1/cutler.1'
    bin.install 'bin/cutler'
    generate_completions_from_executable(bin / 'cutler', 'completion')
  end
end
