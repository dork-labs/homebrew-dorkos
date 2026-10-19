class Dorkos < Formula
  desc "OS-layer for AI agents — scheduling, memory, and coordination"
  homepage "https://dorkos.dev"
  url "https://registry.npmjs.org/dorkos/-/dorkos-0.123.0.tgz"
  sha256 "9dd01fdc7bcc57099060377480b5405eade62e7c8080cbc4ac0554f251093e4f"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", "--global", "--prefix", prefix, "dorkos@#{version}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dorkos --version")
  end
end
