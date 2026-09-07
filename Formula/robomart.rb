# frozen_string_literal: true

# Installs Robomart Command.
class Robomart < Formula
  desc "Agentic commerce and delivery from the terminal"
  homepage "https://robomart.ai"
  url "https://registry.npmjs.org/@robomart/command/-/command-1.2.6.tgz"
  version "1.2.6"
  sha256 "18fde2b7a2e8b4889f9af680e58d1bb17cc8a81dc13ef6f065e1c5fe87676729"
  license "Apache-2.0"

  depends_on :macos
  depends_on "node"

  def install
    bin.install "bin/command" => "robomart"
  end

  test do
    assert_match "1.2.6", shell_output("#{bin}/robomart --version")
  end
end
