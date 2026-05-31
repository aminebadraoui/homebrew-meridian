cask "meridian" do
  version "0.4.0"
  sha256 "49985868e410093ac879aabdf7d15987127f733163ee224b62869f8ca0874b52"

  url "https://github.com/aminebadraoui/meridian/releases/download/v#{version}/Meridian_0.4.0_universal.dmg"
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
