class Alticns < Formula
  desc "CLI to manage alternative icons for Mac apps easily"
  homepage ""
  url "https://github.com/Fus1onDev/Alticns/archive/0.1.2.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  depends_on :xcode => ["13.4", :build]
end
