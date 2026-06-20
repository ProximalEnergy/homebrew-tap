class Whitman < Formula
  desc "Interactive profile picker for project AGENTS.md files"
  homepage "https://github.com/ProximalEnergy/whitman"
  url "https://github.com/ProximalEnergy/whitman/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ccafb19cd7c0ae27816bf50d7b4c28b05f112e4d3df2888b03306d9aab94f258"
  license "Apache-2.0"
  head "https://github.com/ProximalEnergy/whitman.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whitman --version")
  end
end
