if Rails.env.production?

  CarrierWave.configure do |config|
    config.cache_dir = "#{Rails.root}/tmp/uploads"
    config.fog_credentials = {
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['S3_KEY'],
      :aws_secret_access_key => ENV['S3_SECRET'],
      :region                => ENV['S3_REGION']
    }
    config.fog_directory    = ENV['S3_BUCKET']
    config.fog_public = true

  end
end

if Rails.env.development?

    CarrierWave.configure do |config|
      config.root = Rails.root
      config.storage :file

      def
        store_dir
        "#{Rails.root}/tmp/uploads"

      end

      #I am not sure about this one ~SS
      def cache_dir
        "#{Rails.root}/tmp/uploads"
      end
    end
end