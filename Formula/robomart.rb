class Robomart < Formula
  desc "Robomart Command - agentic delivery from the terminal"
  homepage "https://robomart.ai"
  url "https://registry.npmjs.org/@robomart/command/-/command-1.0.2.tgz"
  sha256 "e7672acafa2a6ca28e548a587beb3477798ed4c456b05af34b8d52acadb6d8f6"
  version "1.0.2"
  license "Apache-2.0"

  depends_on :macos

  def install
    bin.install "bin/command" => "robomart"
  end

  test do
    assert_match "1.0.2", shell_output("#{bin}/robomart --version")
  end
end
