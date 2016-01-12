#!/usr/bin/env ruby
require 'webrick'
require 'optparse'

def main(args)
  document_root = './'
  port = 8000

  opt = OptionParser.new
  opt.on('--document-root=DIR', "default: #{document_root}") {|d| document_root = d}
  opt.on('--port=LISTEN-PORT', Integer, "default: #{port}") {|d| port = d}
  opt.parse!(args)

  WEBrick::HTTPServer.new(:DocumentRoot => document_root, :Port => port).start
end

main(ARGV)
