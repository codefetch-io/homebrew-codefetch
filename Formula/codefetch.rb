class Codefetch < Formula
  desc "A single-source of truth for scripts, snippets and config files that can be shared and run anywhere."
  homepage "https://codefetch.io"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-darwin-amd64.tar.gz"
      sha256 "6f16a21eccf153ac246a7b8e1cdddc2772b4047fcc8b4b91bc524d5609fbdc53"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-darwin-arm64.tar.gz"
      sha256 "7d3be9600bb33421028ec22d997943a626e71035ddc56a1e66b9c5a3d363cb9f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-linux-amd64.tar.gz"
      sha256 "87a43fc759ed31726dbff23de424edaf61202022a295412cc790dacf842d615e"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.0.0/codefetch-1.0.0-linux-arm64.tar.gz"
      sha256 "35846860b9b6fc37ea6bf4894613b67cc0db55c88d02f9a29f499cecded4f292"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
