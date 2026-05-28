class VaultKeeper < Formula
  desc "清密.app — 纯本地安全密码保险箱。Argon2id + SQLCipher 零信任加密"
  homepage "https://github.com/duangduang55/vault-keeper"
  version "1.0.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/duangduang55/vault-keeper/releases/download/v1.0.0/qingmi_1.0.0_aarch64.dmg"
    sha256 "692602db485862d50ff7010f9ed364aa7118cc6164d132403ac2b9e7208aa93f"
  end

  auto_updates true

  def install
    app = File.basename(Dir["*.app"].first)
    prefix.install app
  end

  def caveats
    <<~EOS
      清密.app 已安装到 #{prefix}。

      首次运行请在 系统设置 → 隐私与安全性 中允许打开。
      全局快捷键: Cmd+Shift+V 唤醒 / Cmd+Shift+L 锁定。
    EOS
  end

  test do
    assert_predicate prefix/"清密.app", :exist?
  end
end
