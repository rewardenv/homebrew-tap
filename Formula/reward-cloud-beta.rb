# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RewardCloudBeta < Formula
  desc "Reward-Cloud is a plugin for Reward to manipulate Cloud environments."
  homepage ""
  version "0.1.0-beta1"
  license "MIT"

  depends_on "reward-beta" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward-cloud-cli/releases/download/v0.1.0-beta1/reward-cloud_Darwin_x86_64.tar.gz"
      sha256 "d1bb1933e126e928a25af8534eeb28a26f6d53c482a51f9458ba486d059f23ce"

      def install
        bin.install "reward-cloud"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rewardenv/reward-cloud-cli/releases/download/v0.1.0-beta1/reward-cloud_Darwin_arm64.tar.gz"
      sha256 "69c8e7cdac1c5a5df999556d2eb22577aa5c63c90b80ed44fbfd2ce3a894d092"

      def install
        bin.install "reward-cloud"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward-cloud-cli/releases/download/v0.1.0-beta1/reward-cloud_Linux_x86_64.tar.gz"
      sha256 "ca971db7ea0ea426eb49766b09cd3df193ebd90003d651bb2e970ca624eeee5c"

      def install
        bin.install "reward-cloud"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rewardenv/reward-cloud-cli/releases/download/v0.1.0-beta1/reward-cloud_Linux_aarch64.tar.gz"
      sha256 "21dfdd8a489c472979375aa1ef3e6f6b7834e4b8f6b95e109424b385b3cab20f"

      def install
        bin.install "reward-cloud"
      end
    end
  end
end
