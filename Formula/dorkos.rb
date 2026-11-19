class Dorkos < Formula
  desc "OS-layer for AI agents — scheduling, memory, and coordination"
  homepage "https://dorkos.dev"
  url "https://registry.npmjs.org/dorkos/-/dorkos-0.137.0.tgz"
  sha256 "0ff918dd4342993676e8e6f82bff24da9d3db5c285371474226b7d8d4314ffbc"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", "--global", "--prefix", prefix, "dorkos@#{version}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dorkos --version")
  end
end
