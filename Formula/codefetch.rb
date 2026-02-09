class Codefetch < Formula
  desc "CodeFetch CLI"
  homepage "https://github.com/codefetch-io"
  version "1.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.5/codefetch-1.0.5-darwin-amd64.tar.gz"
      sha256 "ad09e34dec4eac9194cc33ec4d938a425e9ff2ef16660cd97fa83dabd2458ec8"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.5/codefetch-1.0.5-darwin-arm64.tar.gz"
      sha256 "5747063c4c19305100b99fff4662ed41a94ab8e71db1749390c0d5c45fc1d1ab"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.5/codefetch-1.0.5-linux-amd64.tar.gz"
      sha256 "20241f9d3f83341c9f4ae17a8f388c1316f606286817d589ad86fdd122fa8973"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.5/codefetch-1.0.5-linux-arm64.tar.gz"
      sha256 "25347761a22d79cfec99fe87190ef5226941bbc61f91e146fd4b429b324b672d"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
