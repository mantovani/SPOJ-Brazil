import Control.Monad

main = do
    line <- getLine
    let [sleepHour, sleepMin, wakeHour, wakeMin] = map read $ words line
    let lineSum = sleepHour + sleepMin + wakeHour + wakeMin 
    when ( lineSum /= 0 ) $ do 
        let totalMins = minuteCount sleepHour sleepMin wakeHour wakeMin 
        print totalMins 
        main


minuteCount :: (Num a, Ord a) => a -> a -> a -> a -> a
minuteCount sHour sMin wHour wMin
    | sHour < wHour = (wHour * 60 + wMin) - (sHour * 60 + sMin)
    | otherwise     = minuteCountD 0 sHour sMin wHour wMin 


minuteCountD :: (Eq a1, Eq a, Num a, Num a1, Num a2) => a2 -> a1 -> a -> a1 -> a -> a2
minuteCountD n sHour sMin wHour wMin =
    if sHour == wHour && sMin == wMin
        then n
    	else
        if sMin == 59
            then
                if sHour == 23
                    then minuteCountD (n + 1) 0 0 wHour wMin
                	else minuteCountD (n + 1) (sHour + 1) 0 wHour wMin
        	else minuteCountD (n + 1) sHour (sMin + 1) wHour wMin
