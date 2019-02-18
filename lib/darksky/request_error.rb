class RequestError < StandardError
  attr_reader :response, :request, :result
  def initialize(message,response=nil,request=nil,result=nil)
    super(message)
  end
end

