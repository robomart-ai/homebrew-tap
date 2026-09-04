# frozen_string_literal: true

# Installs Robomart Command.
class Robomart < Formula
  desc "Direct commands and agentic delivery from the terminal"
  homepage "https://robomart.ai"
  url "https://registry.npmjs.org/@robomart/command/-/command-1.1.5.tgz"
  version "1.1.5"
  sha256 "2fb976044769033f2d779d62fbe53873233e88d44cd54092d12de0c30632cb4c"
  license "Apache-2.0"

  depends_on :macos

  def install
    bin.install "bin/command" => "robomart"
  end

  test do
    assert_match "1.1.5", shell_output("#{bin}/robomart --version")
  end
end
