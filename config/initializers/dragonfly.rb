require 'dragonfly'

app = Dragonfly[:images]
app.configure_with(:imagemagick)
app.configure_with(:rails)
app.define_macro(ActiveRecord::Base, :image_accessor)
app.configure do |c|
  # c.datastore = Dragonfly::DataStorage::S3DataStore.new({
  #   :bucket_name          => ENV['S3_WEBSITE_BUCKET'],
  #   :access_key_id        => ENV['S3_KEY'],
  #   :secret_access_key    => ENV['S3_SECRET'],
  #   # :path                 => 'images '
  # })

  c.server.before_serve do |job, env|
    uid = job.store
    Thumb.create!( :uid => uid, :job => job.serialize )
  end

  c.define_url do |app, job, opts|
    thumb = Thumb.find_by_job(job.serialize)
    if thumb
      app.datastore.url_for(thumb.uid)
    else
      app.server.url_for(job)
    end
  end
end