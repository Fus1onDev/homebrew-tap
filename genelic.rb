class Genelic < Formula
  desc "⚖️ Generate a license file for your project easily"
  homepage "https://github.com/fus1ondev/genelic#readme"
  url "https://github.com/fus1ondev/genelic/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "07cd2caf65a6742a428a18ed1d5bed0533a479b1385f2271e7296b469dc07f3f"
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
