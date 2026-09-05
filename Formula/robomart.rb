# frozen_string_literal: true

# Installs Robomart Command.
class Robomart < Formula
  desc "Agentic commerce and delivery from the terminal"
  homepage "https://robomart.ai"
  url "https://registry.npmjs.org/@robomart/command/-/command-1.2.0.tgz"
  version "1.2.0"
  sha256 "5393cc405a90fd6a1ae6305ad9e0ebaee2ac810dbd7d7eb7b7d9473258cc265e"
  license "Apache-2.0"

  depends_on :macos
  depends_on "node"

  def install
    bin.install "bin/command" => "robomart"
  end

  test do
    assert_match "1.2.0", shell_output("#{bin}/robomart --version")
  end
end
