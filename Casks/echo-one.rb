cask "echo-one" do
  version "2.5.2"
  sha256 "60515c438634a1528b37a3d181059dfc9867b37cf14407c2ccfb709d2b03f4d2"

  url "https://github.com/hg913488/ECHO_ONE/releases/download/v#{version}/EchoOne.dmg"
  name "Echo One"
  desc "On-device voice dictation"
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
