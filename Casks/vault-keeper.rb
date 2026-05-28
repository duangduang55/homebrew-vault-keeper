cask "vault-keeper" do
  version "1.0.0"
  sha256 arm: "692602db485862d50ff7010f9ed364aa7118cc6164d132403ac2b9e7208aa93f"

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
