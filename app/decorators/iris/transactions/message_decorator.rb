class Iris::Transactions::MessageDecorator < Common::Transactions::MessageDecorator
  private

  def humanized_type
    sanitized = @object['type'].sub( /^irishub\//, '' )
    case sanitized
    when 'bank/Send' then 'Send'
    else sanitized
    end
  end
end
