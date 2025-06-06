# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reward < Formula
  desc "Reward is CLI utility for orchestrating Docker based development environments."
  homepage ""
  version "0.7.5"
  license "MIT"

  depends_on "docker" => :optional
  depends_on "mutagen" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.7.5/reward_Darwin_x86_64.tar.gz"
      sha256 "8f0a7594e36abf32b1fd612c71e3c90e751741e0902d560c2d25d65c3374cf84"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rewardenv/reward/releases/download/v0.7.5/reward_Darwin_arm64.tar.gz"
      sha256 "d3310e488c9ae06678efa4dbbad4346f835bf7a78c435f869c27c1ee76ff2804"

      def install
        bin.install "reward"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rewardenv/reward/releases/download/v0.7.5/reward_Linux_x86_64.tar.gz"
        sha256 "7f238d7f54827e1f0d6794f129acba3bf1f9a8a742dc78d4ca5c2279e4b43f2f"

        def install
          bin.install "reward"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rewardenv/reward/releases/download/v0.7.5/reward_Linux_aarch64.tar.gz"
        sha256 "d0eece7775d50cebbfccfae5834eb66aa2fe76043c24186f963bb112096cd05a"

        def install
          bin.install "reward"
        end
      end
    end
  end
end
