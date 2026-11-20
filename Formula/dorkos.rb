class Dorkos < Formula
  desc "OS-layer for AI agents — scheduling, memory, and coordination"
  homepage "https://dorkos.dev"
  url "https://registry.npmjs.org/dorkos/-/dorkos-0.139.0.tgz"
  sha256 "3d22ca73ae002d34dd45f21075407ead2fa19d084b0c5714d7690094c1f06820"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", "--global", "--prefix", prefix, "dorkos@#{version}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dorkos --version")
  end
end
