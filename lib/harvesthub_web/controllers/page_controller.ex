defmodule HarvesthubWeb.PageController do
  use HarvesthubWeb, :controller

  def home(conn, _params) do
    render(conn, :home, layout: false)
  end

  def farmer_sign_up(conn, _params) do
    render(conn, :farmer_sign_up, layout: false)
  end

  def buyer_sign_up(conn, _params) do
    render(conn, :buyer_sign_up, layout: false)
  end

  def buyers(conn, _params) do
    render(conn, :buyers, layout: false)
  end

  def farmers(conn, _params) do
    render(conn, :farmers, layout: false)
  end
end
