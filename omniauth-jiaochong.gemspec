# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/jiaochong/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-jiaochong"
  spec.version       = Omniauth::Jiaochong::VERSION
  spec.authors       = ["wangliyao"]
  spec.email         = ["755210570@qq.com"]

  spec.summary       = 'Omniauth strategy for open.weixin.qq.com'
  spec.description   = 'Using OAuth2 to authenticate wechat user when web resources being viewed within wechat(weixin) client.'

  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth', '~> 1.0'
  spec.add_dependency 'omniauth-oauth2', '1.3.1'
  spec.add_development_dependency 'rspec', '~> 2.7'
end
