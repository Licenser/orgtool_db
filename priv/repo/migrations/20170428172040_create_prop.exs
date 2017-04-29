defmodule OrgtoolDb.Repo.Migrations.CreateProp do
  use Ecto.Migration

  def change do
    create table(:props) do
      add :name, :string
      add :value, :string
      add :description, :text
      add :img, :string
      add :item_id, :integer
      add :prop_type_id, :integer
      add :unit_id, :integer

      timestamps()
    end

  end
end