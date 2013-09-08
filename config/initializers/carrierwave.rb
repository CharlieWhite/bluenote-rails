CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIPAQWIINTRKGJ3LQ',                        # required
    :aws_secret_access_key  => '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',                        # required
   
  }
  config.fog_directory  = 'docked-staging'                     # required
end