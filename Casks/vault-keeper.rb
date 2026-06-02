cask "vault-keeper" do
  version "1.2.0"
  sha256 arm: "de04058de551275e71cd91d97f158d19a5af759fb29df2a9eaa92368e0fb37c6"

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
