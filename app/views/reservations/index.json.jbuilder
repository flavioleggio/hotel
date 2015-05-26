json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :name, :surname, :suite, :date_in, :date_out, :hosts
  json.url reservation_url(reservation, format: :json)
end
