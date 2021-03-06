defmodule OrgtoolDb.Template do
  use OrgtoolDb.Web, :template

  schema "templates" do
    field :name, :string
    field :img, :string
    field :description, :string

    belongs_to :category, OrgtoolDb.Category

    has_many :template_props, OrgtoolDb.TemplateProp

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :img, :description])
    |> cast_assoc(:category)
    |> cast_assoc(:template_props)
    |> validate_required([:name, :img])
  end
end
