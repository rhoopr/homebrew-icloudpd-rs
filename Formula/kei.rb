class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.20.0/kei-macos-aarch64.tar.gz"
      sha256 "b31458ab4f63a0c38869ab60221576ca3b53546a26d84c55034ebc3aeb4c1b63"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.20.0/kei-macos-x86_64.tar.gz"
      sha256 "babda1e5c691e6345e8090dcc30ea9f9d3bf2445ac165ec7de9e90e5b25a8b04"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.20.0/kei-linux-aarch64.tar.gz"
      sha256 "3094e5013aa141af15c34b8cd274b9772299947d21ec01869c92e6605be0e392"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.20.0/kei-linux-x86_64.tar.gz"
      sha256 "37e0c1e479035227a0793a87500af35251321550d11233461c53aa31aee43add"
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
