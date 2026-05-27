class Dodoc < Formula
  desc "Compile .do files to SQL — standalone dodo compiler"
  homepage "https://getdodo.dev"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codedthinking/dodo/releases/download/dodoc-v0.1.0/dodoc-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64"
    else
      url "https://github.com/codedthinking/dodo/releases/download/dodoc-v0.1.0/dodoc-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_X86_64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/codedthinking/dodo/releases/download/dodoc-v0.1.0/dodoc-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    else
      url "https://github.com/codedthinking/dodo/releases/download/dodoc-v0.1.0/dodoc-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X86_64"
    end
  end

  def install
    bin.install "dodoc"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/dodoc --help")
  end
end
