# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reward < Formula
  desc "Reward is CLI utility for orchestrating Docker based development environments."
  homepage ""
  version "0.2.26-beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rewardenv/reward/releases/download/v0.2.26-beta/reward_Darwin_arm64.tar.gz"
      sha256 "43f73b8db828a481afe04edf8f96e3d070f14388a6c582ca248aa3e67f742d6a"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.2.26-beta/reward_Darwin_x86_64.tar.gz"
      sha256 "a16211a65bba413a52c95289d130d6af75f072f04534cc32625ed7ebbe95d0db"

      def install
        bin.install "reward"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rewardenv/reward/releases/download/v0.2.26-beta/reward_Linux_arm64.tar.gz"
      sha256 "0254bfbba797afa6086d4df01f35aea227818a5c1558bc3d6bfb580429aafe6d"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.2.26-beta/reward_Linux_x86_64.tar.gz"
      sha256 "bb3b93299546d188e7ea5e9c59b429d5fca68212cccbdb4f5816c685ce2ce81c"

      def install
        bin.install "reward"
      end
    end
  end

  depends_on "docker" => :optional
  depends_on "mutagen" => :optional
end
