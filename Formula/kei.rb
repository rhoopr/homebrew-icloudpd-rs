class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.14.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.14.1/kei-macos-aarch64.tar.gz"
      sha256 "d148a957cb1b69de92b625ae78aad509e385b86c13441f23e1f0746b342ad635"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.14.1/kei-macos-x86_64.tar.gz"
      sha256 "86aa30005f259571a091443b0fe88d4eba11c4222c77701d6d8edfb246ee1c91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.14.1/kei-linux-aarch64.tar.gz"
      sha256 "33cfa249913dcee3035374cb6b7f450ed17ba763d718c8f555619988f1d45034"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.14.1/kei-linux-x86_64.tar.gz"
      sha256 "3bbdf181e25e311e5fa960053ad234d2ad071cae44d5714df4d3a6799ec3b8f9"
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
