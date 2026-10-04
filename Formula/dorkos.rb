class Dorkos < Formula
  desc "OS-layer for AI agents — scheduling, memory, and coordination"
  homepage "https://dorkos.dev"
  url "https://registry.npmjs.org/dorkos/-/dorkos-0.97.0.tgz"
  sha256 "15a08d5791111ca5dfae4243b23909273819b3eedeb25620efc572e5e2ec9f1b"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", "--global", "--prefix", prefix, "dorkos@#{version}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dorkos --version")
  end
end
