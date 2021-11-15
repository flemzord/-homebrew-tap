# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Komiser < Formula
  desc ""
  homepage ""
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/flemzord/komiser/releases/download/0.1.6/komiser_0.1.6_darwin_arm64.tar.gz"
      sha256 "875b5342a0dce680f0e6118cf0d34145fc043413ca30d62f00e455bdc26bd017"

      def install
        bin.install "komiser"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flemzord/komiser/releases/download/0.1.6/komiser_0.1.6_darwin_amd64.tar.gz"
      sha256 "f46fc80a3593b6da146961f5798e4bd3c7224a7040801cbf8c30355dfc6e4ab4"

      def install
        bin.install "komiser"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/flemzord/komiser/releases/download/0.1.6/komiser_0.1.6_linux_armv6.tar.gz"
      sha256 "6b4c665b9c69c34e924b6a6c95893e6a9e2628f64547da932bf0d2650908fcaa"

      def install
        bin.install "komiser"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/flemzord/komiser/releases/download/0.1.6/komiser_0.1.6_linux_amd64.tar.gz"
      sha256 "a9f814369e5e6b5e166f574e32df8cd523bf7440c12b770fda3fec5a7b6d1332"

      def install
        bin.install "komiser"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/flemzord/komiser/releases/download/0.1.6/komiser_0.1.6_linux_arm64.tar.gz"
      sha256 "7ca4255fad9a7bf0350437534f9297eafe233a301c63908887e87b81133ed14a"

      def install
        bin.install "komiser"
      end
    end
  end

  test do
    system "#{bin}/komiser version"
  end
end