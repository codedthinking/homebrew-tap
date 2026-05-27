class Dodoc < Formula
  desc "Compile .do files to SQL — standalone dodo compiler"
  homepage "https://getdodo.dev"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codedthinking/dodo/releases/download/dodoc-v0.2.0/dodoc-macos-arm64.tar.gz"
      sha256 "10caa09b8b057a3d50bb59078f16853bbb310578d5dadcf1fcef59364b1ba0b6"
    else
      url "https://github.com/codedthinking/dodo/releases/download/dodoc-v0.2.0/dodoc-macos-x86_64.tar.gz"
      sha256 "6583ed688b6e977500e05ed573a8fb3973a7efd117a88e9d6d90c9472c5e0901"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/codedthinking/dodo/releases/download/dodoc-v0.2.0/dodoc-linux-arm64.tar.gz"
      sha256 "39a127682b5f0b57cf499c1420cbf82b0103c91347e27321143dedd2fdfeee91"
    else
      url "https://github.com/codedthinking/dodo/releases/download/dodoc-v0.2.0/dodoc-linux-x86_64.tar.gz"
      sha256 "547a0586815e00fb3b6220479d0409d0bacdcd302c121be4b6690e1a278da80b"
    end
  end

  def install
    bin.install "dodoc"
  end

  test do
    assert_match "dodoc", shell_output("#{bin}/dodoc --version")
  end
end
