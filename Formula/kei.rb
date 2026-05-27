class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.20.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.20.1/kei-macos-aarch64.tar.gz"
      sha256 "907d0710385b69eaec80574be349af9d39a93c2e65da50594e9fa08f4f74dd9e"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.20.1/kei-macos-x86_64.tar.gz"
      sha256 "7b0d629905b138c23debea3a84622da9b03c22bb1108ddaf160852e790889ef2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.20.1/kei-linux-aarch64.tar.gz"
      sha256 "727d945d6b0c561f82069207ca6eea6ba2b3b8fe09ad2740e98526a09ab59fa0"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.20.1/kei-linux-x86_64.tar.gz"
      sha256 "2fa3b08efd2f4156cfe4cc7261582d6f65297bff8e7208cd65317e913773f065"
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
