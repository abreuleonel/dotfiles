#!/usr/bin/ruby

require 'irb/completion'
require 'rubygems'
require 'wirble'
require 'fancy_irb'

default_result_proc = proc do |context|
  if context.inspect?
    context.last_value.inspect
  else
    context.last_value
  end
end

default_colorizer_proc = proc do |value|
  FancyIrb.real_lengths[:output] = value.size
  if defined?(Wirb) && FancyIrb[:colorize, :output]
    Wirb.colorize_result value
  else
    value
  end
end

FancyIrb.start({
  :rocket_mode     => true,                     # activate or deactivate
  :rocket_prompt   => '# => ',                  # prompt to use for the rocket
  :result_prompt   => '=> ',                    # prompt to use for normal output
  :colorize => {                                # colors hash. Set to nil to deactivate colorizing
    :rocket_prompt => [:blue],
    :result_prompt => [:blue],
    :input_prompt  => nil,
    :irb_errors    => [:red],
    :stderr        => [:red, :bright],
    :stdout        => [:black, :bright],
    :input         => nil,
    :output        => true,                     # wirb's output colorization
  },
  :result_proc     => default_result_proc,      # how to get the output result (see below)
  :output_procs    => [default_colorizer_proc], # you can modify/enhance/log your output
  :east_asian_width => false                    # set to true if you have double-width characters (slower)
})

Wirble.init
Wirble.colorize
