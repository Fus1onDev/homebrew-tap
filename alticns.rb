class Alticns < Formula
  desc "CLI to manage alternative icons for Mac apps easily"
  homepage ""
  url "https://github.com/Fus1onDev/Alticns/archive/0.1.2.tar.gz"
  sha256 "442e7edadb7f44874f44a68a49fdcd95da51ceea77bfc49c2c95777ff70bf083"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  depends_on :xcode => ["13.4", :build]
end
