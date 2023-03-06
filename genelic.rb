class Genelic < Formula
  desc "⚖️ Generate a license file for your project easily"
  homepage "https://github.com/fus1ondev/genelic#readme"
  url "https://github.com/fus1ondev/genelic/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "fb1d890372be36769ec92d861aecef9e5f923fa848187aac73f77ac68f999fa3"
  license "MIT"

  depends_on "deno" => :build

  def install
    system "deno", "compile", "--allow-read", "--allow-write", "--allow-env", "--allow-sys", "--output=genelic", "mod.ts"

    bin.install "genelic"
  end

  test do
    assert_match "Title", shell_output("genelic list")
  end
end
