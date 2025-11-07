# frozen_string_literal: true

# Homebrew formula for Cutler: Powerful, declarative settings management for your Mac, with speed.
class Cutler < Formula
  version '0.14.4'
  desc 'Powerful, declarative settings management for your Mac, with speed.'
  homepage 'https://github.com/cutlercli/cutler'

  if Hardware::CPU.arm?
    url "https://github.com/cutlercli/cutler/releases/download/v#{version}/cutler-aarch64-apple-darwin.tar.gz"
    sha256 '2700b02301efd35d895e16291a55b045e919386647f769ce7a4d5cbd9fdb2d7a'
  else
    odie "cutler is only available for macOS ARM (Apple Silicon)."
  end

  license 'GPL-3.0-or-later'

  depends_on :macos

  def install
    man1.install 'man/man1/cutler.1'
    bin.install 'bin/cutler'
    generate_completions_from_executable(bin / 'cutler', 'completion')
  end
end
