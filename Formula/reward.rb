# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reward < Formula
  desc "Reward is CLI utility for orchestrating Docker based development environments."
  homepage ""
  version "0.2.26-beta"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.2.26-beta/reward_Darwin_x86_64.tar.gz"
      sha256 "813ab1993a29b54bfd082a6ad04f64f79f20f98d7cb24fc9ad35966f446d7f50"

      def install
        bin.install "reward"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/rewardenv/reward/releases/download/v0.2.26-beta/reward_Linux_x86_64.tar.gz"
      sha256 "44266992253181f1f6c9c0d2a7bb5c9ca6a13d58a6d6169c94e6aa9fe75054e7"

      def install
        bin.install "reward"
      end
    end
  end

  depends_on "docker" => :optional
  depends_on "mutagen" => :optional
end
