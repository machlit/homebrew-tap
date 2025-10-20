# frozen_string_literal: true

# Homebrew formula for Mcsrvstat: A hybrid & asynchronous Nim wrapper for the Minecraft Server Status API.
class Mcsrvstat < Formula
  version '1.5'
  desc 'A hybrid & asynchronous Nim wrapper for the Minecraft Server Status API.'
  homepage 'https://github.com/hitblast/mcsrvstat.nim'
  url "https://github.com/hitblast/mcsrvstat.nim/archive/refs/tags/v#{version}.tar.gz"
  sha256 '09d3d3465329af71e47c70cab24e1794208abdb7b13c7150e1fd79992d2f5d63'
  license 'MIT'

  depends_on 'openssl'
  depends_on 'nim' => :build
  depends_on :macos

  def install
    system 'nimble', 'build', '-d:ssl', '-d:release', '--accept'
    bin.install 'mcsrvstat'
  end
end
