class VaultKeeper < Formula
  desc "清密.app — 纯本地安全密码保险箱。Argon2id + SQLCipher 零信任加密"
  homepage "https://github.com/duangduang55/vault-keeper"
  version "0.2.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/duangduang55/vault-keeper/releases/download/v0.2.0/%E6%B8%85%E5%AF%86_0.2.0_aarch64.dmg"
    sha256 "213149d9779780b0efcbb3b515a2001a14091b1d1477877a704ee53d94b50074"
  end

  auto_updates true

  def install
    # .dmg 中包含 .app 包
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
