cask "meridian" do
  version "0.2.0"
  sha256 "cf28f500623d250858d930f2b206a3d22bcb9bc145f7647202ed92f7340d3fa9"

  url "https://github.com/aminebadraoui/meridian/releases/download/v#{version}/Meridian_0.2.0_universal.dmg"
  name "Meridian"
  desc "Local-first task and thread management app"
  homepage "https://github.com/aminebadraoui/meridian"

  depends_on macos: ">= :big_sur"

  app "Meridian.app"

  zap trash: [
    "~/Library/Application Support/com.amean.meridian",
    "~/Library/Preferences/com.amean.meridian.plist",
    "~/Library/WebKit/com.amean.meridian",
  ]
end
