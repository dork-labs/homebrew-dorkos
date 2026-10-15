class Dorkos < Formula
  desc "OS-layer for AI agents — scheduling, memory, and coordination"
  homepage "https://dorkos.dev"
  url "https://registry.npmjs.org/dorkos/-/dorkos-0.117.0.tgz"
  sha256 "3b7d32f2eed40f37ace82c906ad0441eb14004357c2494eb84a93c4706b0a42d"
  license "MIT"

  depends_on "node@22"

  def install
    system "npm", "install", "--global", "--prefix", prefix, "dorkos@#{version}"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dorkos --version")
  end
end
