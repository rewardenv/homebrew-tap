# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Reward < Formula
  desc "Reward is CLI utility for orchestrating Docker based development environments."
  homepage ""
  version "0.1.25-beta"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/rewardenv/reward/releases/download/v0.1.25-beta/reward_Darwin_x86_64.tar.gz"
    sha256 "751fa421b64d835eb8dd99b3f511d4194987222e9c717f0f6751a49597ef4902"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/rewardenv/reward/releases/download/v0.1.25-beta/reward_Linux_x86_64.tar.gz"
    sha256 "cf22a862593651c4544d48ded8700ee5d67fcbbc24491864d380093d9115b952"
  end

  depends_on "docker" => :optional
  depends_on "docker-edge" => :optional
  depends_on "mutagen" => :optional

  def install
    bin.install "reward"
  end
end
