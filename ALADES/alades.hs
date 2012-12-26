import Control.Monad

main = do
	line <- getLine
	let [sHour, sMin, wHour, wMin] = map read $ words line
	unless ( sHour == 0 && sMin == 0 && wHour == 0 && wMin == 0 ) $ do
		let
			sCount  =   (sHour * 60 + sMin)
			wCount  =   (wHour * 60 + wMin)
		if sCount < wCount
			then print (wCount - sCount)
			else print (1440 - (sCount - wCount))
		main
