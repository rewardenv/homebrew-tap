# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reward < Formula
  desc "Reward is CLI utility for orchestrating Docker based development environments."
  homepage ""
  version "0.7.6"
  license "MIT"

  depends_on "docker" => :optional
  depends_on "mutagen" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.7.6/reward_Darwin_x86_64.tar.gz"
      sha256 "855492677b85e25e5fa7a921806660eeb899414759c05d395edf73b91fc614f4"

      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/rewardenv/reward/releases/download/v0.7.6/reward_Darwin_arm64.tar.gz"
      sha256 "8516edf72140977a09f20c3517cdac04411c512a41a4443db8069d4a49acb0ce"

      def install
        bin.install "reward"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/rewardenv/reward/releases/download/v0.7.6/reward_Linux_x86_64.tar.gz"
      sha256 "1b0c0033522acf2e3ce2a5cb12207ea3d683252d6b4275642b17983d0ac033e3"
      def install
        bin.install "reward"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/rewardenv/reward/releases/download/v0.7.6/reward_Linux_aarch64.tar.gz"
      sha256 "22f8e77afbd3141b59fe039c328bcb11dc9e83f52b5a9011dcfc6ac71142cec6"
      def install
        bin.install "reward"
      end
    end
  end
end
