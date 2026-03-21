cask "lightpanda" do
  version "0.2.6"

  on_arm do
    sha256 "8cda90e1dfadba6e02db44caacec104210a803736d22cb544773d4a9cac560f3"
    url "https://github.com/lightpanda-io/browser/releases/download/v#{version}/lightpanda-aarch64-macos"
  end

  on_intel do
    sha256 "3adbc7d7de2e586bc7a464b9754b8a4930cba530f973768bcaaff1f8befb3a4d"
    url "https://github.com/lightpanda-io/browser/releases/download/v#{version}/lightpanda-x86_64-macos"
  end

  name "Lightpanda"
  desc "Headless browser designed for AI and automation"
  homepage "https://github.com/lightpanda-io/browser"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "lightpanda-#{Hardware::CPU.arch == :arm64 ? "aarch64" : "x86_64"}-macos", target: "lightpanda"

  uninstall delete: [
    "#{HOMEBREW_PREFIX}/bin/lightpanda",
  ]
end
