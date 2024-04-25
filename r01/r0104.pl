lecture(modeling_physics, tuesday, 3).
lecture(compiler, tuesday, 4).

lecture(area_practice_a, wednesday, 4).
lecture(intellectual_property_strategies, wednesday, 5).

lecture(human_computer_interaction, thursday, 3).
lecture(network_practice, thursday, 4).
lecture(intelligent_information_processing, thursday, 5).

lecture(data_structures_and_algorithms, friday, 2).
lecture(english_for_science_career_a, friday, 3).
lecture(intelligent_information_processing_practice, friday, 4).

thursday(X) :- lecture(X, thursday, _).
correct :- lecture(intelligent_information_processing, thursday, 5), lecture(intelligent_information_processing_practice, friday, 4).
