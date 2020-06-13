# デフォルトのlocaleを日本語(:ja)
Rails.application.config.i18n.default_locale = :ja

# 翻訳ファイルのディレクトを追加
Rails.application.config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]

