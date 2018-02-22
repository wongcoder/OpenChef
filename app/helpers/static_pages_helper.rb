module StaticPagesHelper
  def welcomeLanguages()
      languageArrays = ["Welcome.", "ようこそ", "환영"]
      languageSelect = rand(3)
      welcomeString = languageArrays[languageSelect]
    return welcomeString
  end
end
