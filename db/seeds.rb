ITEM_STATES = %w(merched quality_check under_rack_review stockroom ready_to_list)
PHOTO_STATES = %w(taken to_be_verified under_review verified)
RACK_PREFIXES = %w(140 299 121)

RACK_PREFIXES.each do |rack_prefix|
  (0..999).each do |counter|
    location = Location.create(code: "#{rack_prefix}-#{counter.to_s.rjust(3, "0")}")
    item = Item.create(location_code: location.code, state: ITEM_STATES.sample, photo_state: PHOTO_STATES.sample)
    location.update_attribute(:item_id, item.id)
  end
end
