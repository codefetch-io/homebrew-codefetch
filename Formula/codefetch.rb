class Codefetch < Formula
  desc "CodeFetch CLI"
  homepage "https://github.com/codefetch-io"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.1/codefetch-1.0.1-darwin-amd64.tar.gz"
      sha256 "b1e51205d2060d7bdcd71b1f59880c451643bbc9f6897895760cfa9220e9efb4"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.1/codefetch-1.0.1-darwin-arm64.tar.gz"
      sha256 "e2cff31cffb73e84c9337b196a6f03afeb937e977dfedf2fa9d8835857cbf17d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.1/codefetch-1.0.1-linux-amd64.tar.gz"
      sha256 "621c72662123771107f4119eb438af0432fd8786fc9e3827ad12c90b381e163d"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.1/codefetch-1.0.1-linux-arm64.tar.gz"
      sha256 "6321bd4d7d459c4327bba029b55e028ff54659d95e9b959291317b7966bf2968"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
