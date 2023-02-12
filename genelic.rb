class Genelic < Formula
  desc "⚖️ Generate a license file for your project easily"
  homepage "https://github.com/fus1ondev/genelic#readme"
  url "https://github.com/fus1ondev/genelic/archive/refs/tags/v1.1.1.tar.gz"
  sha256 "24ad7f5ad940a25910e813515eb95837f4f0c51e5d5660c4d51d1ef28b6b31ec"
  license "MIT"

  depends_on "deno" => :build

  def install
    system "deno", "compile", "--allow-read", "--allow-write", "--allow-env", "--output=genelic", "mod.ts"

    bin.install "genelic"
  end

  test do
    assert_match "Title", shell_output("genelic list")
  end
end
