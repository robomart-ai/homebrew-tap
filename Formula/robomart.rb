# frozen_string_literal: true

# Installs the Robomart Command terminal client.
class Robomart < Formula
  desc "Agentic delivery from the terminal"
  homepage "https://robomart.ai"
  url "https://registry.npmjs.org/@robomart/command/-/command-1.1.1.tgz"
  version "1.1.1"
  sha256 "476136d25eef5cb7a30f459325474cf5a6ef7a979d6b99b21cff2042c5a2a8a2"
  license "Apache-2.0"

  depends_on :macos

  def install
    bin.install "bin/command" => "robomart"
  end

  test do
    assert_match "1.1.1", shell_output("#{bin}/robomart --version")
  end
end
