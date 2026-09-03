# frozen_string_literal: true

# Installs the Robomart Command terminal client.
class Robomart < Formula
  desc "Agentic delivery from the terminal"
  homepage "https://robomart.ai"
  url "https://registry.npmjs.org/@robomart/command/-/command-1.1.2.tgz"
  version "1.1.2"
  sha256 "4c8f1b37f7e7daf761552a6ad531bb992f70906bd947eac308f9642a7d043451"
  license "Apache-2.0"

  depends_on :macos

  def install
    bin.install "bin/command" => "robomart"
  end

  test do
    assert_match "1.1.2", shell_output("#{bin}/robomart --version")
  end
end
