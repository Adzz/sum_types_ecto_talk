defmodule DiscountVouchers do
  use Ecto.Schema
  @derive {Jason.Encoder, only: [:percentage_discount]}

  embedded_schema do
    field(:percentage_discount, :decimal)
  end
end
