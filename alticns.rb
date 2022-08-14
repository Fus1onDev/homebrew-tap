class Alticns < Formula
  desc "CLI to manage alternative icons for Mac apps easily"
  homepage ""
  url "https://github.com/Fus1onDev/Alticns/archive/0.1.1.tar.gz"
  sha256 "85e21929ab63ce20bacedf0463c23a61d416208fa28c2785e072e023bfaff98b"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  depends_on :xcode => ["13.4", :build]
end
