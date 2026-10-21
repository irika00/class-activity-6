Rails.application.routes.draw do
  # Phases 3 and 4: add your nested routes in YOUR section only.
  # Staying inside your own section keeps merge conflicts small.
  # Check your work with:  bin/rails routes | grep <resource>


  # ---------- Pair A: Festival -> Stage ----------

# Q1. What URL path lists the children of one parent?
#     GET /festivals/:festival_id/stages  (e.g. /festivals/1/stages)
#
# Q2. Which route parameter holds the parent's id?
#     :festival_id. Inside the nested routes, :id is reserved for the stage
#     itself (e.g. /festivals/1/stages/7 has festival_id=1 and id=7).

  resources :festivals do
    resources :stages
  end
end
  # ---------- Pair B: Artist -> Track (use shallow nesting) ----------
  # Q1: List tracks of one artist: GET /artists/:artist_id/tracks
  # Q2: Parent id param: :artist_id 
  # Q3: With shallow: true, index/create stay nested under
  #     /artists/:artist_id/tracks, while show/update/destroy become
  #     /tracks/:id. A track's id is already unique, so once a track
  #     exists we don't need the artist id to find it. The artist id
  #     is only needed to list an artist's tracks or create a new one.
  resources :artists, shallow: true do
    resources :tracks
  end


  # ---------- Pair C: Attendee -> Ticket (and Festival -> Ticket) ----------
  resources :attendees do
    resources :tickets
  end


  # ---------- Integrator: Stage / Artist -> Performance ----------
  resources :stages do
    resources :performances
  end
  resources :artists do
    resources :performances
  end



end