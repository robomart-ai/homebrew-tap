# frozen_string_literal: true

# Installs Robomart CLI.
class Robomart < Formula
  desc "Direct commands and agentic delivery from the terminal"
  homepage "https://robomart.ai"
  url "https://registry.npmjs.org/@robomart/command/-/command-1.1.3.tgz"
  version "1.1.3"
  sha256 "79d3fefea87fa3500cfef4c0fe35dbc27ca067a90f0be71ae95a42cfe1fab745"
  license "Apache-2.0"

  depends_on :macos

  def install
    bin.install "bin/command" => "robomart"
  end

  test do
    assert_match "1.1.3", shell_output("#{bin}/robomart --version")
  end
end
