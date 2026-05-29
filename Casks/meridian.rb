cask "meridian" do
  version "0.3.0"
  sha256 "bb8b050497bfad98a9279c59ad104a6e0c50f89055cb1a40df55e07131894a85"

  url "https://github.com/aminebadraoui/meridian/releases/download/v#{version}/Meridian_0.3.0_universal.dmg"
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
