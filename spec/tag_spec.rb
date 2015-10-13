require 'spec_helper'

describe SimpleInfo::Tag do
  subject { SimpleInfo::Tag.new }

  it 'creates or edits info' do
    expect(subject).to receive(:execute).with("git tag -f -a simple_info_storage `git log --format=%H | tail -1`")
    subject.edit
  end

  it 'shows info' do
    allow(subject).to receive(:info_tag_exists?).and_return(true)
    expect(subject).to receive(:execute).with("git cat-file tag simple_info_storage").and_return("object 6498ec2d1b96b0e02df122396c3512c359320633
type commit
tag simple_info_storage
tagger Jakub Niewczas <niewczas.jakub@gmail.com> 1444727814 +0200

test test test")

    expect(subject.show).to eq "test test test"
  end

  it 'shows empty info when there is no info tag yet' do
    allow(subject).to receive(:info_tag_exists?).and_return(false)
    expect(subject.show).to eq ""
  end

  it 'pulls info from remote' do
    expect(subject).to receive(:execute).with("git fetch origin tag simple_info_storage")
    subject.pull('origin')
  end

  it 'pushes info to remote' do
    expect(subject).to receive(:execute).with("git push --force origin refs/tags/simple_info_storage:refs/tags/simple_info_storage")
    subject.push('origin')
  end
end
