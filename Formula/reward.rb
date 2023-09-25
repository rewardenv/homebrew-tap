# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reward < Formula
  desc "Reward is CLI utility for orchestrating Docker based development environments."
  homepage ""
  version "0.5.0"
  license "MIT"

  depends_on "docker" => :optional
  depends_on "mutagen" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rewardenv/reward/releases/download/v0.5.0/reward_Darwin_arm64.tar.gz"
      sha256 "babec5dda0f12af8185839576d72ecd9c158ca4c5f52cc32e5072664c1219154"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.5.0/reward_Darwin_x86_64.tar.gz"
      sha256 "6ea37a644e88505e1cffe4881aba6c08ff65fb278238478d5c8d19bfc7c986bf"

      def install
        bin.install "reward"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rewardenv/reward/releases/download/v0.5.0/reward_Linux_aarch64.tar.gz"
      sha256 "3a5f32730a18ca97bb113c30e0594d08b23fdc8fe3f9c5f7cf33325f0f579130"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.5.0/reward_Linux_x86_64.tar.gz"
      sha256 "c76a6f1e1264571cc33d5a904776b47801c2f80010938108338531b39d46e3d7"

      def install
        bin.install "reward"
      end
    end
  end
end
