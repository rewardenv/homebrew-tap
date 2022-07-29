# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reward < Formula
  desc "Reward is CLI utility for orchestrating Docker based development environments."
  homepage ""
  version "0.3.8-beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rewardenv/reward/releases/download/v0.3.8-beta/reward_Darwin_arm64.tar.gz"
      sha256 "2a2235b345ffc1ea94d035ba84ffeb170bc3acdc08f58a650a02df73785e8284"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.3.8-beta/reward_Darwin_x86_64.tar.gz"
      sha256 "247227ee59e66ab45f1ac38a4c6c3874f0e7581089991feac368bd40a044f575"

      def install
        bin.install "reward"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rewardenv/reward/releases/download/v0.3.8-beta/reward_Linux_aarch64.tar.gz"
      sha256 "eee2fe2833630d4b7d4e8d3b473af8de86c5960ee12bcc5c4244d9867178b920"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.3.8-beta/reward_Linux_x86_64.tar.gz"
      sha256 "973f34e786cec8d9d2cff4094ce3ec073dff5ba0b721e1ba61af520a9981b9b2"

      def install
        bin.install "reward"
      end
    end
  end

  depends_on "docker" => :optional
  depends_on "mutagen" => :optional
end
