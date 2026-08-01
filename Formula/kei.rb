class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.23.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.23.0/kei-macos-aarch64.tar.gz"
      sha256 "33b763aeeca97fa382482e0d4947b53e69a9786a4ebfcebe1070e84b05d94bab"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.23.0/kei-macos-x86_64.tar.gz"
      sha256 "1393a07c91757526a3cd7256c2d55f71cb2ec08d4b822f97030a66199e562256"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.23.0/kei-linux-aarch64.tar.gz"
      sha256 "5ddc7281244859d360d660c6e2dce6cef1280b1e37163370faf7b0570228b7e4"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.23.0/kei-linux-x86_64.tar.gz"
      sha256 "2de8a268609d7e3a5e15d7c3d68db447eda1c3f680db53da8554568b965eb9e5"
    end
  end

  def install
    bin.install "kei"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kei --version")
    assert_match "kei", shell_output("#{bin}/kei --help")
  end
end
