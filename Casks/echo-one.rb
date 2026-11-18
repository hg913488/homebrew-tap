cask "echo-one" do
  version "2.6.0"
  sha256 "11cc3b6958c9043b042b5c9e40c725aac3c8958815b20cd36df30625c861feb9"

  url "https://github.com/hg913488/ECHO_ONE/releases/download/v#{version}/EchoOne.dmg"
  name "Echo One"
  desc "On-device dictation with a voice for Claude Code and Codex"
  homepage "https://echooneapp.vercel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "EchoOne.app"

  zap trash: [
    "~/Library/Application Support/EchoOne",
    "~/Library/Caches/com.goelstudio.echoone",
    "~/Library/HTTPStorages/com.goelstudio.echoone",
    "~/Library/Preferences/com.goelstudio.echoone.plist",
  ]
end
