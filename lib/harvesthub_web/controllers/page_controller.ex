defmodule HarvesthubWeb.PageController do
  use HarvesthubWeb, :controller

  def home(conn, _params) do
    render(conn, :home, layout: false)
  end

  def farmer_sign_up(conn, _params) do
    render(conn, :farmer_sign_up, layout: false)
  end

  def wholesaler_sign_up(conn, _params) do
    render(conn, :wholesaler_sign_up, layout: false)
  end

  def wholesalers(conn, _params) do
    render(conn, :wholesalers, layout: false)
  end

  def farmers(conn, _params) do
    render(conn, :farmers, layout: false)
  end
end
