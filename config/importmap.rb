# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

pin "tab", to: "tab.js"
pin "tab2", to: "tab2.js"
pin "tab3", to: "tab3.js"
pin "school", to: "school.js"

pin "comment-edit", to: "comment-edit.js"