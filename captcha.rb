class Captcha
  def initialize(pattern, left_operand, operator, right_operand)
    @pattern = pattern
    @left_operand = left_operand
    @operator = operator
    @right_operand = right_operand
  end

  def left_operand()
    number_wording = { '1' => 'One', '2' => 'Two', '3' => 'Three', '4' => 'Four', 5 => 'Five', 6 => 'Six', 7 => 'Seven', 8 => 'Eight', 9 => 'Nine' }
    return number_wording[@left_operand.to_s] if @pattern == 1
    return @left_operand.to_s if @pattern == 2
  end

  def operator
    operator_hash = { '1' => '+', '2' => '-', '3' => '*' }
    operator_hash[@operator.to_s]
  end

  def right_operand()
    number_wording = { '1' => 'One', '2' => 'Two', '3' => 'Three', '4' => 'Four', 5 => 'Five', 6 => 'Six', 7 => 'Seven', 8 => 'Eight', 9 => 'Nine' }
    return number_wording[@right_operand.to_s] if @pattern == 2
    return @right_operand.to_s if @pattern == 1
  end
end