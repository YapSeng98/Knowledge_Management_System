-- Cleanup: 015 assumed migration 014 had already run (Cambridge -> Kelley ->
-- Michigan shuffle in Finance/Foundation), but 014 was apparently never applied.
-- So 015's update/delete landed on the wrong rows in that slot: it correctly
-- replaced Cambridge (s13-0-1) with OpenLearn, and removed Kelley (s13-0-2, also
-- edX, so no harm done) -- but never touched Michigan (s13-0-3, edX), which is
-- still live. This removes it. Finance/Foundation ends at 2 sources: Khan
-- Academy and OpenLearn Managing My Money.

delete from resources where id = 's13-0-3';
