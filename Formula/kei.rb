class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.21.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.2/kei-macos-aarch64.tar.gz"
      sha256 "22c75b27e5891c4e82eb4a3235c59de55413d9b25b3aece3990e9e1114157fdb"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.2/kei-macos-x86_64.tar.gz"
      sha256 "d02780b30aabe2e50d6f07b637e9b6c13c16eaec36459cfd3e49e4d92ecd1c3c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.21.2/kei-linux-aarch64.tar.gz"
      sha256 "104df7f0fcef5d0ff4595b9010ab57bc815df8bef2eae7f26fd5933189e93792"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.21.2/kei-linux-x86_64.tar.gz"
      sha256 "d102bd076216a918080c713662e2bab3f2010a40645a890a80db26f9d8e3b0d8"
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
