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
      sha256 "928d691e5fcaa65e1960bd49784d9f2b5d2f43bc64e7017eac0930bb4bcbc6c2"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.4.0-beta3/reward_Darwin_x86_64.tar.gz"
      sha256 "374c1fb6e500bdf1a921b79822888895d70981f4abade5865d8a2f9875427b75"

      def install
        bin.install "reward"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rewardenv/reward/releases/download/v0.4.0-beta3/reward_Linux_aarch64.tar.gz"
      sha256 "11f3e07d7fd6c083c5e0448c9aed48ae333bd6a8bb681729522cecacd17b70ae"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.4.0-beta3/reward_Linux_x86_64.tar.gz"
      sha256 "4caf95a69959fa0dce41df1e46917eae65fdffdc43887e053b3b5ffc746bcfb1"

      def install
        bin.install "reward"
      end
    end
  end
end
