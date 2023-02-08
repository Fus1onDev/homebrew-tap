class Genelic < Formula
  desc "⚖️ Generate a license file for your project easily"
  homepage "https://github.com/fus1ondev/genelic#readme"
  url "https://github.com/fus1ondev/genelic/archive/refs/tags/1.0.0.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  depends_on "deno"

  def install
    system "deno", "compile", "--allow-read", "--allow-write", "--allow-env", "--unstable", "--output=genelic", "mod.ts"
    bin.install "genelic"
  end

  test do
    assert_match "Title", shell_output("genelic list")
  end
end
