class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.22.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.0/kei-macos-aarch64.tar.gz"
      sha256 "0a009e517d1f052aabaf00d510a8416b3bdfc5bc5ad0adaed9f2d1c3ee9045eb"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.0/kei-macos-x86_64.tar.gz"
      sha256 "46cc4f8c158a7055cc941299a736ef6da4fd3edd84257c9d5054934c874fbc29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.0/kei-linux-aarch64.tar.gz"
      sha256 "a4c194dae835f59c34e82028b40e63cbbd22a6ba8d9c41aef474da35234c61f6"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.0/kei-linux-x86_64.tar.gz"
      sha256 "bfaf492aaf336641834885260da91004ca41fb3760be930bbeaa260653edcf88"
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
