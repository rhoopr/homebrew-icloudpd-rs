class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.22.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.5/kei-macos-aarch64.tar.gz"
      sha256 "9cfb0e0e6e047e00ea5c353280aa5789386fd1e43b9c1e706b0497723fc1f5a9"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.5/kei-macos-x86_64.tar.gz"
      sha256 "997410efff3cdfaaf36e3b6303e0c865747a419ddd32cd70f932274e7a77455d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.5/kei-linux-aarch64.tar.gz"
      sha256 "1f01e9b331a2f1f4ce61ae716a1ce72ef8180e7215192629769c4042b0494d09"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.5/kei-linux-x86_64.tar.gz"
      sha256 "79ef96103e075db3e94e59033bba315117602741d40f922fcb5ac6f952bfade4"
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
