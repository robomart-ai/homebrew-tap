# frozen_string_literal: true

# Installs Robomart Command.
class Robomart < Formula
  desc "Delivery commands and a reference agent from the terminal"
  homepage "https://robomart.ai"
  url "https://registry.npmjs.org/@robomart/command/-/command-1.2.5.tgz"
  version "1.2.5"
  sha256 "a840d34bf98b3ca1eaef6d79f805d37992c0fb0fd87c91323cb28e2e4bd89057"
  license "Apache-2.0"

  depends_on :macos
  depends_on "node"

  def install
    bin.install "bin/command" => "robomart"
  end

  test do
    assert_match "1.2.5", shell_output("#{bin}/robomart --version")
  end
end
