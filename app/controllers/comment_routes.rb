# Should this be a comment controller?

post '/items/:id/comments/?' do # what's with the ? mark?
  Comment.create(params)
  redirect back
end

put '/items/:id/comments/:id/?' do
  Comment.update_attributes(params)
  redirect back
end
