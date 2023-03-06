class Genelic < Formula
  desc "⚖️ Generate a license file for your project easily"
  homepage "https://github.com/fus1ondev/genelic#readme"
  url "https://github.com/fus1ondev/genelic/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "a8a5a3ed614c9f59efaa36bda96ea726aef021cbe416985936a4b056a1fb874e"
  license "MIT"

  depends_on "deno" => :build

  def install
    system "deno", "compile", "--allow-read", "--allow-write", "--allow-env", "--allow-sys", "--allow-net", "--allow-run", "--no-lock", "--output=genelic", "mod.ts"

    bin.install "genelic"
  end

  test do
    assert_match "Title", shell_output("genelic list")
  end
end
