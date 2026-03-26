class Codefetch < Formula
  desc "A single-source of truth for scripts, snippets and config files that can be shared and run anywhere."
  homepage "https://codefetch.io"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.1.0/codefetch-1.1.0-darwin-amd64.tar.gz"
      sha256 "977f12edceb6b7d98424d0ee3b2b368c25fcb75ee6a0facd1896f25345ffb776"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.1.0/codefetch-1.1.0-darwin-arm64.tar.gz"
      sha256 "353ada373bd7092e1dad8b61f3c9129c1da4910e5a6c488cf49652e2f96ac107"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.1.0/codefetch-1.1.0-linux-amd64.tar.gz"
      sha256 "f69de697466806ec5514e5888d1ab8f23a195c345b3942f17e9c5dd75e321edf"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.1.0/codefetch-1.1.0-linux-arm64.tar.gz"
      sha256 "bb301fcb2882a03c4a4f11479c262cd8d6df102cf36962eb86493d0e5fc57de7"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
