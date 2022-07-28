# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reward < Formula
  desc "Reward is CLI utility for orchestrating Docker based development environments."
  homepage ""
  version "0.3.7-beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.3.7-beta/reward_Darwin_x86_64.tar.gz"
      sha256 "30344d224b78bfb5fdff81ab8a7f86141c4f5cb52c277656a7fad8cf25562dc1"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rewardenv/reward/releases/download/v0.3.7-beta/reward_Darwin_arm64.tar.gz"
      sha256 "51e51fb3458e70ac7e2fa636ce58f8b023321f54d6253102508d323847295ca7"

      def install
        bin.install "reward"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.3.7-beta/reward_Linux_x86_64.tar.gz"
      sha256 "f8a44873c464e04991453d23e8a2e725ad760b13c36068ff40c472760aef68e7"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rewardenv/reward/releases/download/v0.3.7-beta/reward_Linux_aarch64.tar.gz"
      sha256 "d96768385f38744a726f42d59802356beb8b51060329ff8745492bef04475e6a"

      def install
        bin.install "reward"
      end
    end
  end

  depends_on "docker" => :optional
  depends_on "mutagen" => :optional
end
