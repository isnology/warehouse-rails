module ModelHelpers
  def hash
    @hash ||= build.map { |obj| [obj.id, obj] }.to_h
  end

  def select(*args)
    @select ||= build.map { |obj| [args.map { |arg| obj.__send__(arg.to_s) }.join(' '), obj.id] }
  end

  def build
    @build ||= self.all
  end

  private :build
end