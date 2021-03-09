def clock_angle(time)
    hours = time.split(":")[0].to_i
    minutes = time.split(":")[1].to_i

    hours_hand_degrees_per_minute = 0.5
    hours_angle = (hours * (360/12)) + (minutes * hours_hand_degrees_per_minute)
    minutes_angle = minutes * (360/60)

    difference = (hours_angle - minutes_angle).abs
    if difference > 180
        difference = 360 - difference
    end
    difference
end

