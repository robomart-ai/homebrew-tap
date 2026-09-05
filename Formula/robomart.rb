# frozen_string_literal: true

# Installs Robomart Command.
class Robomart < Formula
  desc "Agentic commerce and delivery from the terminal"
  homepage "https://robomart.ai"
  url "https://registry.npmjs.org/@robomart/command/-/command-1.2.2.tgz"
  version "1.2.2"
  sha256 "25fa73e09181d46e2544c49b061dbae1cd7d2146b0443147516db7dcd0460f15"
  license "Apache-2.0"

  depends_on :macos
  depends_on "node"

  def install
    bin.install "bin/command" => "robomart"
  end

  test do
    assert_match "1.2.2", shell_output("#{bin}/robomart --version")
  end
end
