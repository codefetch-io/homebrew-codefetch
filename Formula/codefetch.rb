class Codefetch < Formula
  desc "CodeFetch CLI"
  homepage "https://github.com/codefetch-io"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.1.0/codefetch-1.1.0-darwin-amd64.tar.gz"
      sha256 "c438301078f864381e939a8da63426bc37b20c2cf871d00c4135116aed144d4f"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.1.0/codefetch-1.1.0-darwin-arm64.tar.gz"
      sha256 "deeb278c4a63a9c3a17b4f2e71febbaf1bfd252e544b02c42ffb3b8b547106ca"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.1.0/codefetch-1.1.0-linux-amd64.tar.gz"
      sha256 "2635984c312eb65e56c2a8a4674a508d375b93b57a82fdff25b7a00c4cdf127c"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.1.0/codefetch-1.1.0-linux-arm64.tar.gz"
      sha256 "36bd63da67d91172bf54d955b9af49b20abd8f9e7f2d75fcb5c232cbbb9e92de"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
