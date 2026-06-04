class Adocfmt < Formula
  desc "An opinionated AsciiDoc formatter"
  homepage "https://github.com/dheid/adocfmt"
  url "https://github.com/dheid/adocfmt/releases/download/v0.1.0/adocfmt.jar"
  version "0.1.0"
  sha256 "bebf026c55b85a6ed59c5b6f587d335af1cd3827472fa60486c79b5e2aeeba36"
  license "Apache-2.0"

  depends_on "openjdk@17"

  def install
    libexec.install "adocfmt.jar"
    bin.write_jar_script libexec/"adocfmt.jar", "adocfmt", java_version: "17"
  end

  test do
    system "#{bin}/adocfmt", "--help"
  end
end
