CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJTZQFTN3WGXSCB2A',                        # required
    aws_secret_access_key: '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',    # required
    region:                'sa-east-1'
  }
  config.fog_directory  = Rails.env.production? ? 'vistoria-production' : 'vistoria-development'                          # required
end