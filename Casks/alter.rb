# frozen_string_literal: true

cask 'alter' do
  version '1.1.4'
  sha256 '4cd70f5babff08e5368d77d3cbb0c72031eb1f796a4e52c18e5fef92fb515c05'

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
