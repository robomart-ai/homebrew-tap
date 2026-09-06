# frozen_string_literal: true

# Installs Robomart Command.
class Robomart < Formula
  desc "Agentic commerce and delivery from the terminal"
  homepage "https://robomart.ai"
  url "https://registry.npmjs.org/@robomart/command/-/command-1.2.4.tgz"
  version "1.2.4"
  sha256 "8d557383152ab5437a7235a78a1dfaf67c9868138363d368d2b935d112216313"
  license "Apache-2.0"

  depends_on :macos
  depends_on "node"

  def install
    bin.install "bin/command" => "robomart"
  end

  test do
    assert_match "1.2.4", shell_output("#{bin}/robomart --version")
  end
end
