cask "vault-keeper" do
  version "1.1.0"
  sha256 arm: "6db75e9eabe0d11d89b75b9ef6088f372f3533e97b58f0b395b9d7148d587a88"

  url "https://github.com/duangduang55/vault-keeper/releases/download/v#{version}/qingmi_#{version}_aarch64.dmg"
  name "清密"
  desc "纯本地安全密码保险箱 — Argon2id + SQLCipher 零信任加密"
  homepage "https://github.com/duangduang55/vault-keeper"

  depends_on macos: ">= :sonoma"

  app "清密.app"

  zap trash: [
    "~/Library/Application Support/com.duangduang55.vault-keeper",
    "~/Library/Saved Application State/com.duangduang55.vault-keeper.savedState",
  ]
end
