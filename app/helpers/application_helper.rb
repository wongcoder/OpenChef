module ApplicationHelper
  def page_title(page_title = '')
    base_title = "I forgot to supply a title"
    if page_title.empty?
      base_title
    else
      page_title + "|" + base_title
    end
  end

  def welcomeLanguages()
      languageArrays = ["Welcome.", "ようこそ", "환영"]
      languageSelect = rand(3)
      welcomeString = languageArrays[languageSelect]
    return welcomeString
  end
  
end
