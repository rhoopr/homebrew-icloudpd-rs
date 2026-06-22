class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.22.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.1/kei-macos-aarch64.tar.gz"
      sha256 "474a6e49cd5b9f1763a3933d514021d25ec236e9806fef038f5e189e304e9f3b"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.1/kei-macos-x86_64.tar.gz"
      sha256 "ed98e9649cfa8b4f0331992e57e17f92a3449e4c0a1c1450650bbcd71b950433"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.1/kei-linux-aarch64.tar.gz"
      sha256 "769a648df13df80a591d730e07ac8a24df0c2db24c429b7e44a86e480207d7aa"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.1/kei-linux-x86_64.tar.gz"
      sha256 "e94b7e3df657b61ffc397b7a703f4914bfbdacdd8754f600ae972897eaa25281"
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
