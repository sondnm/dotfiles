" let g:rails_projections = {
"       \ "app/forms/*_form.rb": {
"       \   "command": "form",
"       \   "template": [
"       \     "# frozen_string_literal: true",
"       \     "{camelcase|capitalize|colons}class %SForm",
"       \     "end"
"       \   ],
"       \   "test": [
"       \     "test/forms/{}_form_test.rb",
"       \     "spec/forms/{}_form_spec.rb"
"       \   ]
"       \ },
"       \ "app/queries/*_query.rb": {
"       \   "command": "query",
"       \   "template": [
"       \     "# frozen_string_literal: true",
"       \     "{camelcase|capitalize|colons}class %SQuery",
"       \     "end"
"       \   ],
"       \   "test": [
"       \     "test/queries/{}_query_test.rb",
"       \     "spec/queries/{}_query_spec.rb"
"       \   ]
"       \ },
"       \ "app/services/*_service.rb": {
"       \   "command": "service",
"       \   "template": [
"       \     "# frozen_string_literal: true",
"       \     "{camelcase|capitalize|colons}class %SService",
"       \     "end"
"       \   ],
"       \   "test": [
"       \     "test/services/{}_service_test.rb",
"       \     "spec/services/{}_service_spec.rb"
"       \   ]
"       \ }
" }     \
