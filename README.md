Musicians apply their filters, they have plugins in their environment.

Band pass filter. Filter should take a soundwave, and return a soundwave the same length oas the input soundwave, should also take an upper limit, the returned soundwave shouldn't have any frequencies above the upper limit in it. Should also take lower limit, now freqs below the lower limit.

upper=limit=80, lower_limit=40, [60] => [60]
upper=limit=80, lower_limit=40, [100] => [80]
upper=limit=80, lower_limit=40, [60, 100] => [60, 80]

([60], 40, 80)

Frequency.update(inputted_frequency)

Class Frequency
Method Update

Edge cases:
Corrupt soundwaves - one or more freqs is a null value, would want an argument error with the string - "input soundwave is corrupt"

([60], 40, 80) => [60]
([120] 100, 150) => [120]
([50, 60], 40, 80) => [50, 60]
([20], 40, 80) => [40]
([20, 30], 40, 80) => [40, 40]
([90], 40, 80) => [80]
([90, 100], 40, 80) => [80, 80]
([70, 90], 40, 80) => [70, 80]
([30, 50], 40, 80) => [40, 50]
([null], 40, 80) => "Input soundwave is corrupt"
([null, 80], 40, 80) => "Input soundwave is corrupt"
