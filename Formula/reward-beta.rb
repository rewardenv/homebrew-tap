# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RewardBeta < Formula
  desc "Reward is CLI utility for orchestrating Docker based development environments."
  homepage ""
  version "0.4.0-beta3"
  license "MIT"

  depends_on "docker" => :optional
  depends_on "mutagen" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rewardenv/reward/releases/download/v0.4.0-beta3/reward_Darwin_arm64.tar.gz"
      sha256 "91f04f6b541097c6117b4ea768813a998351f074f328a3289f87284485c24672"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.4.0-beta3/reward_Darwin_x86_64.tar.gz"
      sha256 "9586d60315d24339667d1a4a5b7d398141fe37034e2f43667c136402e194a9ba"

      def install
        bin.install "reward"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.4.0-beta3/reward_Linux_x86_64.tar.gz"
      sha256 "ad85723c349623143f9163606df541a98f0e49e010ab017e31c536d7f9ee448b"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rewardenv/reward/releases/download/v0.4.0-beta3/reward_Linux_aarch64.tar.gz"
      sha256 "7b1cac4e4d6a028fb4e93d83754a5c107e11f1047466a6a25956634b42035b32"

      def install
        bin.install "reward"
      end
    end
  end
end
