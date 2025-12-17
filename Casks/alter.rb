# frozen_string_literal: true

cask 'alter' do
  version '1.2.0'
  sha256 'fa70acfa1d7623b5238cf06857d7872a4d268b02d3d3e6f95a5bd262eb6a5c04'

  url "https://github.com/hitblast/Alter/releases/download/v#{version}/alter-v#{version}-darwin-arm64.zip"
  name 'Alter'
  desc 'Alter is a minimal macOS app which can be used to customize your app icons with ease.'
  homepage 'https://github.com/hitblast/Alter'

  depends_on macos: '>= :ventura' # macOS 13

  postflight do
    system 'xattr -d com.apple.quarantine #{appdir}/Alter.app'
  end

  app 'Alter.app'
end
