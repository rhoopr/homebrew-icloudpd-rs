class Kei < Formula
  desc "Photo sync engine - compact, efficient, reliable"
  homepage "https://github.com/rhoopr/kei"
  version "0.22.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.9/kei-macos-aarch64.tar.gz"
      sha256 "904fd38c181c244c599c35362cd7ea905a123f37e63777f1723a2abd0edb5e11"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.9/kei-macos-x86_64.tar.gz"
      sha256 "2a5da02c3af4f32edb5d335b77cbd0ce92700708a536dc77dc988cdccd21df47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/kei/releases/download/v0.22.9/kei-linux-aarch64.tar.gz"
      sha256 "bebfc621c563de21e6302b0525f7f9dc5fe273610e1787ed506789f91257b72d"
    else
      url "https://github.com/rhoopr/kei/releases/download/v0.22.9/kei-linux-x86_64.tar.gz"
      sha256 "e84f7f37b5d3bbfa9d629e20d11639171ebf63e731a9d636ce4f3f1138e3e2ad"
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
