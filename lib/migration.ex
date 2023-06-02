defmodule Migration do
  use Ecto.Migration

  def up do
    create table(:example) do
      add(:name, :string)
      add(:age, :integer)
    end
  end

  def down do
    drop(table(:example))
  end
end
