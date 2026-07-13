class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.22.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.12/kei-macos-aarch64.tar.gz"
      sha256 "25e7f831892ab551b751a10fdaaab65e4a0a26bf8292cb1b2624d1e8a815ecd3"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.12/kei-macos-x86_64.tar.gz"
      sha256 "41096ede7255a4e6b4a70028905390a72c1fd336d257693f40c85cf97e752b23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.12/kei-linux-aarch64.tar.gz"
      sha256 "8f2cbb0c2e8bdf8665b2bee043895fd64100a5d21d44afed9096adab1f43f8e2"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.12/kei-linux-x86_64.tar.gz"
      sha256 "ffe93ad94c86a5ae778c904d1100feda8c48a130033056ff7428da1f6c0922ec"
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
