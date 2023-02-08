class Alticns < Formula
  desc "CLI to manage alternative icons for Mac apps easily"
  homepage "https://github.com/fus1ondev/Alticns"
  url "https://github.com/fus1ondev/Alticns/archive/0.1.3.tar.gz"
  sha256 "6c238d9511e3a39f729228723219b1dc9a294e7f38c1a59fbf05e50357a848e0"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  depends_on :xcode => ["13.4", :build]
end
