cask "magpie" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/fmguerreiro/magpie/releases/download/v#{version}/Magpie.dmg"
  name "Magpie"
  desc "Menu-bar notification aggregator"
  homepage "https://github.com/fmguerreiro/magpie"

  depends_on macos: :ventura

  app "Magpie.app"

  caveats <<~EOS
    Magpie is ad-hoc signed, not notarized. Gatekeeper quarantines it on first
    launch. Clear it once with:
      xattr -dr com.apple.quarantine "/Applications/Magpie.app"

    Runtime prerequisites:
      - gh authenticated (gh auth status)
      - jira-cli initialized, if using the Jira adapter
      - ~/.config/magpie/config.json
  EOS
end
