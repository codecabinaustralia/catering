CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJZ36L6RT5WVYFT5A',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'us-west-2',                  # optional, defaults to 'us-east-1'
 }
  config.fog_directory  = 'salvation-army'                                   # required
  config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end