class Codefetch < Formula
  desc "CodeFetch CLI"
  homepage "https://codefetch.io"
  version "1.0.0"
  url "https://dl.cloudsmith.io/public/hsops/codefetch/raw/names/codefetch-1.0.0.tar.gz"
  sha256 "a1ab2c06ece89e5a021e0f0f7ed17f3177f52cac2492fba2d9a7783c86b7d1c1"
  license "MIT"

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--help"
  end
end
