class IcloudpdRs < Formula
  desc "Fast, reliable iCloud Photos downloader written in Rust"
  homepage "https://github.com/rhoopr/icloudpd-rs"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/icloudpd-rs/releases/download/v#{version}/icloudpd-rs-macos-aarch64.tar.gz"
      sha256 "ac78d543f9fe6defb839aaa4b817e963c41b12e01dbc02b5404a8f1d67c92103"
    else
      url "https://github.com/rhoopr/icloudpd-rs/releases/download/v#{version}/icloudpd-rs-macos-x86_64.tar.gz"
      sha256 "e0553b00d040e571af2601057fa84c26c6dde33f6b522e8db91f6c786f28332f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/rhoopr/icloudpd-rs/releases/download/v#{version}/icloudpd-rs-linux-aarch64.tar.gz"
      sha256 "438972ed98dfb20fdb3a8b88e903e70512616fdac2b1de1ebc8372a1f0c89fd3"
    else
      url "https://github.com/rhoopr/icloudpd-rs/releases/download/v#{version}/icloudpd-rs-linux-x86_64.tar.gz"
      sha256 "dbb274ad0b7154f038a8d36e3daaffe49f8148cad1f3a09b22a90fd006138016"
    end
  end

  def install
    bin.install "icloudpd-rs"
  end

  test do
    assert_match "Download iCloud photos", shell_output("#{bin}/icloudpd-rs --help")
  end
end
