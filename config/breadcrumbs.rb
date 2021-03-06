crumb :top do
  link "メルカリ", top_path
end

crumb :mypage do
  link "マイページ", mypage_path
  parent :top
end

crumb :profile do
  link "プロフィール", profile_path
  parent :mypage
end

crumb :userconfirm do
  link "本人情報の登録", userconfirm_path
  parent :mypage
end

crumb :userlogout do
  link "ログアウト", userlogout_path
  parent :mypage
end

crumb :credit do
  link "支払い方法", credit_path
  parent :mypage
end

crumb :creditregistration do
  link "クレジットカード情報入力"
  parent :credit
end
# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
