class Genelic < Formula
  desc "⚖️ Generate a license file for your project easily"
  homepage "https://github.com/fus1ondev/genelic#readme"
  url "https://github.com/fus1ondev/genelic/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "ae692df1ec9d08bab5eef8ac7774ec692f4cff9e4a875c9aa1433eb1b8dfab0f"
  license "MIT"

  depends_on "deno" => :build

  def install
    system "deno", "compile", "-A", "--output=glc", "mod.ts"

    bin.install "glc"
  end

  test do
    assert_match "Title", shell_output("glc list")
  end
end
