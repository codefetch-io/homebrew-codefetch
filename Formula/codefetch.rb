class Codefetch < Formula
  desc "A single-source of truth for scripts, snippets and config files that can be shared and run anywhere."
  homepage "https://codefetch.io"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.1.0/codefetch-1.1.0-darwin-amd64.tar.gz"
      sha256 "50226465eec32a61f853d1bf8944c63c76723ab132e3d81722939be23a25b8c7"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.1.0/codefetch-1.1.0-darwin-arm64.tar.gz"
      sha256 "405f3ac11e02120b928c6a14467a87f579af1f63d3ff8bdbda6886131413cb84"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.1.0/codefetch-1.1.0-linux-amd64.tar.gz"
      sha256 "6143ef69c414d97c135e41df06c1cd6351e265523f267d47e35938a1592ea71a"
    else
      url "https://github.com/codefetch-io/codefetch-releases/releases/download/v1.1.0/codefetch-1.1.0-linux-arm64.tar.gz"
      sha256 "e1fa8b7ff421f6058b912862eb492e3c51427778983ac34c6b018acd29850e80"
    end
  end

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--version"
  end
end
