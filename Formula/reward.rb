# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reward < Formula
  desc "Reward is CLI utility for orchestrating Docker based development environments."
  homepage ""
  version "0.7.1"
  license "MIT"

  depends_on "docker" => :optional
  depends_on "mutagen" => :optional

  on_macos do
    on_intel do
      url "https://github.com/rewardenv/reward/releases/download/v0.7.1/reward_Darwin_x86_64.tar.gz"
      sha256 "66af0c014df5a92bd465995efa743c58df9d74dcd4fa53472ffac11a94738d96"

      def install
        bin.install "reward"
      end
    end
    on_arm do
      url "https://github.com/rewardenv/reward/releases/download/v0.7.1/reward_Darwin_arm64.tar.gz"
      sha256 "1f1d16b0dee2887d4470b1e854b0e2109521d660fa021d89a6d495d0024d77a9"

      def install
        bin.install "reward"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rewardenv/reward/releases/download/v0.7.1/reward_Linux_x86_64.tar.gz"
        sha256 "817a38877b8a42c7d09b4fffb8c1db91848c31b9396d801c96056d1c395c4a3f"

        def install
          bin.install "reward"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/rewardenv/reward/releases/download/v0.7.1/reward_Linux_aarch64.tar.gz"
        sha256 "31a0a605eb8f247f1b21cf56c9216a0643f5269dd8d0901fce7674d2af9f4b03"

        def install
          bin.install "reward"
        end
      end
    end
  end
end
