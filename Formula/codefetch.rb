class Codefetch < Formula
  desc "CodeFetch CLI"
  homepage "https://codefetch.io"
  version "1.0.0"
  url "https://dl.cloudsmith.io/public/hsops/codefetch/raw/files/codefetch.tar.gz"
  sha256 "85cea451eec057fa7e734548ca3ba6d779ed5836a3f9de14b8394575ef0d7d8e"
  license "MIT"

  def install
    bin.install "codefetch"
  end

  test do
    system "#{bin}/codefetch", "--help"
  end
end
