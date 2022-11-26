Minitest variant

```
test 'when application was submitted' do    
  component = SomeComponent.new(required_param: required_param)
  assert_match_snapshot(render_inline(component))
end
```

RSpec variant

```
test 'when application was submitted' do    
  component = SomeComponent.new(required_param: required_param)
  expect(render_inline(component)).to match_snapshot
end
```

