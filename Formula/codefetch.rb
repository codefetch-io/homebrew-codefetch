class Codefetch < Formula
  desc "A single-source of truth for scripts, snippets and config files that can be shared and run anywhere."
  homepage "https://codefetch.io"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.1.0/codefetch-1.1.0-darwin-amd64.tar.gz"
      sha256 "cb7f7265970039f489088ded4dc9af95d572b885f0e416b444aa09fc72f925d0"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.1.0/codefetch-1.1.0-darwin-arm64.tar.gz"
      sha256 "f2513639a4e5a13952fc15a07e3b286bdc063a46343fde742b00c80b04d206f0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.1.0/codefetch-1.1.0-linux-amd64.tar.gz"
      sha256 "4bd00617cd97d9640f4d21192a0a809b27185b0ac7a9a47cdc11b4497a7079ba"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.1.0/codefetch-1.1.0-linux-arm64.tar.gz"
      sha256 "8936da562f7cebf54116bbbd423dbe36629a6c70bc184dcfea478756ce03fe0f"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
