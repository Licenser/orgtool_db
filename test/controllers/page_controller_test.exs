defmodule OrgtoolDb.PageControllerTest do
  use OrgtoolDb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Orgtool"
  end
end
