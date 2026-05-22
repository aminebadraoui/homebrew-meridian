cask "meridian" do
  version "0.1.0"
  sha256 "1b6c9d6ac443619e02de163e608a8d4da54441879d3fa6f4699b5237c06546fe"

  url "https://github.com/aminebadraoui/meridian/releases/download/v#{version}/Meridian_0.1.0_universal.dmg"
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
