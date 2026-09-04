# frozen_string_literal: true

# Installs Robomart CLI.
class Robomart < Formula
  desc "Direct commands and agentic delivery from the terminal"
  homepage "https://robomart.ai"
  url "https://registry.npmjs.org/@robomart/command/-/command-1.1.4.tgz"
  version "1.1.4"
  sha256 "78e31e5100de13d50ba155ae21522d0e3863c5ca5dac49847641da996714f928"
  license "Apache-2.0"

  depends_on :macos

  def install
    bin.install "bin/command" => "robomart"
  end

  test do
    assert_match "1.1.4", shell_output("#{bin}/robomart --version")
  end
end
