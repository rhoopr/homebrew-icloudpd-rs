class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.22.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.10/kei-macos-aarch64.tar.gz"
      sha256 "5394dd24333879a15a75780b62cdde07ac9b6910bf4632ee263ddb6e35963cf9"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.10/kei-macos-x86_64.tar.gz"
      sha256 "dbb0f419cfd45f450e6be728d5b048abd555a8c84be490e1006181c8e7e51e2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.10/kei-linux-aarch64.tar.gz"
      sha256 "be9c1a6fdc25806a5f5fd64611a8e69c3519492e8b3a0f060ed95dad8ecf1dc0"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.10/kei-linux-x86_64.tar.gz"
      sha256 "94c0f0f025c36fba2f253adf0600ebf05d16f32c6b71da9a46eede92a37aa727"
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
