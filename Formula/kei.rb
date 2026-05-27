class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.20.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.20.2/kei-macos-aarch64.tar.gz"
      sha256 "b638c34acedd416bcbad7fdb1ff37863e3157461c4c8c3b2420678db2d775612"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.20.2/kei-macos-x86_64.tar.gz"
      sha256 "26553593b642d68c85aaa07769d966da9f524b0a19c4b10f3535f85d95d97991"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.20.2/kei-linux-aarch64.tar.gz"
      sha256 "0fa92ddc48570ca1ee935ab28e2fc26fc3ebb0109f2e740d4109db112c451138"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.20.2/kei-linux-x86_64.tar.gz"
      sha256 "678710e6a2883c8e62daf6cc4b376397d5cbab1110fca2b9678b229b09ef8ad3"
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
