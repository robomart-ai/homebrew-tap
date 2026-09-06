# frozen_string_literal: true

# Installs Robomart Command.
class Robomart < Formula
  desc "Agentic commerce and delivery from the terminal"
  homepage "https://robomart.ai"
  url "https://registry.npmjs.org/@robomart/command/-/command-1.2.3.tgz"
  version "1.2.3"
  sha256 "336b6262569830a13a3d4888ea3ecfcd1c68f5008f3b0ac2d78faff593a2a10d"
  license "Apache-2.0"

  depends_on :macos
  depends_on "node"

  def install
    bin.install "bin/command" => "robomart"
  end

  test do
    assert_match "1.2.3", shell_output("#{bin}/robomart --version")
  end
end
