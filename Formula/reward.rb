# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reward < Formula
  desc "Reward is CLI utility for orchestrating Docker based development environments."
  homepage ""
  version "0.2.31-beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rewardenv/reward/releases/download/v0.2.31-beta/reward_Darwin_arm64.tar.gz"
      sha256 "3a40cdb30817bd3a12770cfc2ca7eee3aa96ed169ec6cd0d112e80beb376fcb4"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.2.31-beta/reward_Darwin_x86_64.tar.gz"
      sha256 "157b501afb33efeaa2bd6844d2da070336f3e8e076ab3a9fa477ead482f524ab"

      def install
        bin.install "reward"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.2.31-beta/reward_Linux_x86_64.tar.gz"
      sha256 "2849b6b6659d4229726632a626c2ed4c142109cc8421d4f2cb481c8f5a33e3fc"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rewardenv/reward/releases/download/v0.2.31-beta/reward_Linux_aarch64.tar.gz"
      sha256 "db6effedcf10766f7f5769a12892eeb7b294663a83477daa5cbd88df9c43fe9e"

      def install
        bin.install "reward"
      end
    end
  end

  depends_on "docker" => :optional
  depends_on "mutagen" => :optional
end
