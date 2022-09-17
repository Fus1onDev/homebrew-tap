class Genelic < Formula
  desc "Generate a license file for your project from the command line"
  homepage "https://github.com/Fus1onDev/genelic"
  url "https://github.com/Fus1onDev/genelic/releases/download/v0.1.0/genelic-macos-x64.tar.gz"
  sha256 "9149f1ec093d203a126a1e49f36e0612b698850f8d9a04c3c21de0a154408e7b"
  license "MIT"

  def install
    bin.install "genelic"
  end
end
