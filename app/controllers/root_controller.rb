class RootController < ApplicationController
  
  def home
    FlickRaw.api_key="7e2cf59f1f4b34e9f9fadf3db63b270d"
    FlickRaw.shared_secret="0ef4a87215ab8428"
    @smiles = FlickRaw::Flickr::Photos.search(:tags => 'smile')
  end
end
