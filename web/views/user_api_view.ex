defmodule OrgtoolDb.UserApiView do
  use OrgtoolDb.Web, :view
  use JaSerializer.PhoenixView

  attributes [:email, :name]

  has_one :permission,
    serializer: OrgtoolDb.PermissionView,
    include: false,
    identifiers: :when_included
end
