# frozen_string_literal: true

# Homebrew formula for Cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.12.2'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/cutlercli/cutler'

  on_arm do
    url "https://github.com/cutlercli/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-arm64.zip"
    sha256 '915f4a8fff8e10fa26219603a7b3f82ba648b2db28e1c1b2a7250c8ec34c76f7'
  end

  on_intel do
    url "https://github.com/cutlercli/cutler/releases/download/v#{version}/cutler-v#{version}-darwin-x86_64.zip"
    sha256 '4ac5d636517d36ca1a02746d1065f4e0b647790f677d047b66bc6169ce953f7f'
  end

  license 'Apache-2.0'

  depends_on :macos

  def install
    man1.install 'man/man1/cutler.1'
    bin.install 'bin/cutler'
    generate_completions_from_executable(bin / 'cutler', 'completion')
  end
end
