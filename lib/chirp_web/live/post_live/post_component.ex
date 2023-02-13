defmodule ChirpWeb.PostLive.PostComponent do
  use ChirpWeb, :live_component

  def handle_event("like", _, socket) do
    Chirp.Timeline.inc_likes(socket.assigns.post)
    {:noreply, socket}
  end
end
