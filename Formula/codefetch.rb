class Codefetch < Formula
  desc "CodeFetch CLI"
  homepage "https://github.com/hsops/codefetch"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/homebrew-tap/raw/main/1.1.0/codefetch-1.1.0-darwin-amd64.tar.gz"
      sha256 "7540fbc07ce94a492ac9ce97820557bafb576194b6eb85287f708dc1714839aa"
    else
      url "https://github.com/codefetch-io/homebrew-tap/raw/main/1.1.0/codefetch-1.1.0-darwin-arm64.tar.gz"
      sha256 "2e208b65612dedd1648db350f3aba566074f463c24255817f71d4882c458cb7a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/homebrew-tap/raw/main/1.1.0/codefetch-1.1.0-linux-amd64.tar.gz"
      sha256 "53a1919a658baa55e28757c51ad9c298d909d58086712f3a8164e1932d2c3783"
    else
      url "https://github.com/codefetch-io/homebrew-tap/raw/main/1.1.0/codefetch-1.1.0-linux-arm64.tar.gz"
      sha256 "bde549d4afbdd2c20d1e19ffe5c1db24861c75f570bfabb3990eb22d17b7186e"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
