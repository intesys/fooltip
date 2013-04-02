require 'spec_helper'
require 'carrierwave/test/matchers'

module Fooltip
  describe ImageUploader do
    include CarrierWave::Test::Matchers

    before do
      image = File.join(Fooltip::Engine.root.join('spec/data'), 'logo.gif')
      container = FactoryGirl.create(:container)
      ImageUploader.enable_processing = true
      @uploader = ImageUploader.new(container, :image)
      @uploader.store!(File.open(image))
    end

    after do
      ImageUploader.enable_processing = false
      @uploader.remove!
    end

    context 'whitelist' do
      %w(jpg jpeg gif png).each do |format|
        it "should include '#{format}'" do
          @uploader.extension_white_list.should include(format)
        end
      end
    end

    #context 'the thumb version' do
    #  it "should scale down a landscape image to be exactly 64 by 64 pixels" do
    #    @uploader.thumb.should have_dimensions(64, 64)
    #  end
    #end

    #context 'the small version' do
    #  it "should scale down a landscape image to fit within 200 by 200 pixels" do
    #    @uploader.small.should be_no_larger_than(200, 200)
    #  end
    #end

    #it "should make the image readable only to the owner and not executable" do
    #  @uploader.should have_permissions(0600)
    #end
  end
end
