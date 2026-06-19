rails = Category.find_or_create_by!(name: "Ruby on Rails")
ruby = Category.find_or_create_by!(name: "Ruby")
web = Category.find_or_create_by!(name: "Web Programlama")
database = Category.find_or_create_by!(name: "Veritabanı")

Post.find_or_create_by!(title: "Ruby on Rails Öğrenmeye Başlıyorum") do |post|
  post.article = "Bu yazıda Rails projesinin temel yapısını, MVC mimarisini ve blog uygulamasının nasıl geliştirileceğini anlatıyorum."
  post.status = :published
end

Post.find_or_create_by!(title: "MVC Mimarisi Nedir?") do |post|
  post.article = "MVC; Model, View ve Controller katmanlarından oluşur. Model veritabanı işlemlerini, View kullanıcı arayüzünü, Controller ise gelen istekleri yönetir."
  post.status = :published
end

Post.find_or_create_by!(title: "Rails Routes Mantığı") do |post|
  post.article = "Routes dosyası, kullanıcıdan gelen URL isteklerini ilgili controller actionlarına yönlendirir."
  post.status = :draft
end