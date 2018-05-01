let g:rails_projections = {
  \  "app/forms/*_form.rb": {
  \    "command": "form",
  \    "template": "class %SForm\nend",
  \    "test": [
  \      "test/forms/{}_form_test.rb",
  \      "spec/forms/{}_form_spec.rb"
  \    ],
  \  },
  \  "app/queries/*_query.rb": {
  \    "command": "query",
  \    "template": "class %SQuery\nend",
  \    "test": [
  \      "test/queries/{}_query_test.rb",
  \      "spec/queries/{}_query_spec.rb"
  \    ],
  \  },
  \  "app/services/*_service.rb": {
  \    "command": "service",
  \    "template": "class %SService\nend",
  \    "test": [
  \      "test/services/{}_service_test.rb",
  \      "spec/services/{}_service_spec.rb"
  \    ],
  \  }
  \ }
