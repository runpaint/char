class Char::ExpandsOnNFKC
  DEFAULT = false
  NON_DEFAULT = [168..168, 175..175, 180..180, 184..184, 188..190, 306..307, 319..320, 329..329, 452..460, 497..499, 728..733, 836..836, 890..890, 900..901, 1415..1415, 1653..1656, 2392..2399, 2524..2525, 2527..2527, 2611..2611, 2614..2614, 2649..2651, 2654..2654, 2908..2909, 3635..3635, 3763..3763, 3804..3805, 3907..3907, 3917..3917, 3922..3922, 3927..3927, 3932..3932, 3945..3945, 3955..3955, 3957..3961, 3969..3969, 3987..3987, 3997..3997, 4002..4002, 4007..4007, 4012..4012, 4025..4025, 7834..7834, 8125..8125, 8127..8129, 8141..8143, 8157..8159, 8173..8174, 8189..8190, 8215..8215, 8229..8230, 8243..8244, 8246..8247, 8252..8252, 8254..8254, 8263..8265, 8279..8279, 8360..8360, 8448..8449, 8451..8451, 8453..8454, 8457..8457, 8470..8470, 8480..8482, 8507..8507, 8531..8543, 8545..8547, 8549..8552, 8554..8555, 8561..8563, 8565..8568, 8570..8571, 8748..8749, 8751..8752, 9321..9397, 10764..10764, 10868..10870, 10972..10972, 12443..12444, 12447..12447, 12543..12543, 12800..12830, 12832..12867, 12880..12895, 12924..12925, 12977..13007, 13056..13311, 64256..64262, 64275..64279, 64285..64285, 64287..64287, 64298..64310, 64312..64316, 64318..64318, 64320..64321, 64323..64324, 64326..64335, 64477..64477, 64490..64507, 64512..64829, 64848..64911, 64914..64967, 65008..65020, 65049..65049, 65072..65072, 65097..65100, 65136..65138, 65140..65140, 65142..65151, 65269..65276, 65507..65507, 119134..119140, 119227..119232]
  def self.[](codepoint)
    NON_DEFAULT.any?{|rng| rng.include?(codepoint)} ? !DEFAULT : DEFAULT
  end
end