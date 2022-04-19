# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reward < Formula
  desc "Reward is CLI utility for orchestrating Docker based development environments."
  homepage ""
  version "0.3.0-beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.3.0-beta/reward_Darwin_x86_64.tar.gz"
      sha256 "da6b641b92ae439de37d038121baa6b18107a5a907e194a5c6d9e7891bfb087e"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rewardenv/reward/releases/download/v0.3.0-beta/reward_Darwin_arm64.tar.gz"
      sha256 "8121f2150ff9ab21420673625ce6f24482d4175f4151d4b9a2e737f233593ac1"

      def install
        bin.install "reward"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rewardenv/reward/releases/download/v0.3.0-beta/reward_Linux_aarch64.tar.gz"
      sha256 "ff5e827f7544cb91bb02e80598ec8fa539ee053f398a41c4d5b00426adbe0bcd"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.3.0-beta/reward_Linux_x86_64.tar.gz"
      sha256 "7c46751dc32ada33209190444833de9c5ef3349bab89ec9f093a6b940b551f24"

      def install
        bin.install "reward"
      end
    end
  end

  depends_on "docker" => :optional
  depends_on "mutagen" => :optional
end
