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

Rails.application.routes.draw do
  resources :festivals do
    resources :stages
  end
end
  # ---------- Pair B: Artist -> Track (use shallow nesting) ----------



  # ---------- Pair C: Attendee -> Ticket (and Festival -> Ticket) ----------



  # ---------- Integrator: Stage / Artist -> Performance ----------



end
