cask "lightpanda-nightly" do
  version :latest
  sha256 :no_check

  on_arm do
    url "https://github.com/lightpanda-io/browser/releases/download/nightly/lightpanda-aarch64-macos"
  end

  on_intel do
    url "https://github.com/lightpanda-io/browser/releases/download/nightly/lightpanda-x86_64-macos"
  end

  name "Lightpanda (nightly)"
  desc "Headless browser designed for AI and automation (nightly build)"
  homepage "https://github.com/lightpanda-io/browser"

  binary "lightpanda-#{Hardware::CPU.arch == :arm64 ? "aarch64" : "x86_64"}-macos", target: "lightpanda"

  uninstall delete: [
    "#{HOMEBREW_PREFIX}/bin/lightpanda",
  ]
end
