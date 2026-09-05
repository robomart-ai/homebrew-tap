# frozen_string_literal: true

# Installs Robomart Command.
class Robomart < Formula
  desc "Agentic commerce and delivery from the terminal"
  homepage "https://robomart.ai"
  url "https://registry.npmjs.org/@robomart/command/-/command-1.2.1.tgz"
  version "1.2.1"
  sha256 "87b69563b23c76280e1cc45ccb55086cff151905ab7d7df974784cd640c023f7"
  license "Apache-2.0"

  depends_on :macos
  depends_on "node"

  def install
    bin.install "bin/command" => "robomart"
  end

  test do
    assert_match "1.2.1", shell_output("#{bin}/robomart --version")
  end
end
