
require 'optparse'
require 'ostruct'

def get_options(copyright, command, descr, options, func = nil)
  # options[:host] = CONFIG.keys.first if CONFIG

  OptionParser.new do |opts|
    opts.banner = "gemma-s #{options[:version]} --- #{copyright}\n\n#{descr}\n\n  Usage: #{File.basename($0)} #{command} [options] \n\n"

    opts.on("--debug [level]",Integer,"Display debug information (--no-verbose is quiet mode)") do |d|
      d = 1 if not d
      options[:debug] = d
    end
    opts.on("-v", "--[no-]verbose", "Run verbosely (--no-verbose is quiet mode)") do |v|
      options[:verbose] = v
    end
    opts.on("-h", "--help", "Show this help") do |b|
      options[:show_help] = true
      print opts
    end

    func.call(opts,options) if func

  end.parse!

  p options if options[:debug]
  if ARGV[0] == command
    ARGV.shift
  else
    raise "Unknown command <#{ARGV}>"
  end

  OpenStruct.new(options)
end
