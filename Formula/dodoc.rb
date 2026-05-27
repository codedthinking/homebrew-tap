class Dodoc < Formula
  desc "Compile .do files to SQL — standalone dodo compiler"
  homepage "https://getdodo.dev"
  license "MIT"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/codedthinking/dodo/releases/download/dodoc-v0.1.1/dodoc-macos-arm64.tar.gz"
      sha256 "e37428399aaf2ed0f51c9c51229a774ffa6d2096b23c0b58579002e81f250fb6"
    else
      url "https://github.com/codedthinking/dodo/releases/download/dodoc-v0.1.1/dodoc-macos-x86_64.tar.gz"
      sha256 "dc1330458f132e7a27d046525652f2f56cf6d40505c6ece02b036bed33509dd0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/codedthinking/dodo/releases/download/dodoc-v0.1.1/dodoc-linux-arm64.tar.gz"
      sha256 "8f84873a3120aa2471f1457fdbea629640dda5d11c674491d571b185cdc3dbf0"
    else
      url "https://github.com/codedthinking/dodo/releases/download/dodoc-v0.1.1/dodoc-linux-x86_64.tar.gz"
      sha256 "5e44bd4ba20621e8ee553fce73767c4faf2045735d3b1ecd52e2a193f5ab6d98"
    end
  end

  def install
    bin.install "dodoc"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/dodoc --help")
  end
end
