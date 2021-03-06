
module Nvd3 exposing 
  ( Chart
  , ChartData
  , ChartOptions
  , stackedAreaChart
  , setChartData
  , updateData
  , renderChart
  )

{-| The Nvd3 wrapper 

# Types
@docs Chart, ChartData, ChartOptions

# StackedAreaChart
@docs stackedAreaChart

# Set the element and data of initial chart
@docs setChartData

# Update the chart data
@docs updateData

# Render a chart
@docs renderChart

-}

import Task
import Json.Decode as Json
import Native.Nvd3

{-| An immutable type representing a Chart. -}
type Chart = Chart

{-| An immutable type representing a Chart data associated 
    with the Html tag. -}
type ChartData = ChartData

{-| The options of a chart -}
type alias ChartOptions data number1 = 
     { px : data -> number1 -- proyection for a x value
     , py : data -> number1 -- proyection for a y value
     , useInteractiveGuideLine : Bool
     , rightAlignYAxis : Bool
     , showControls : Bool
     }

{-| Create a Stacked Area Chart -}
stackedAreaChart : ChartOptions data number -> Chart
stackedAreaChart = Native.Nvd3.stackedAreaChart

{-| Sets the associated tag and data of a ChartData -}
setChartData : String -> data -> ChartData
setChartData = Native.Nvd3.setChartData

{-| Update the associated data of a ChartData -}
updateData : ChartData -> data -> ChartData
updateData = Native.Nvd3.updateData

{-| Render a Chart with the ChartData -}
renderChart : ChartData -> Chart -> Chart
renderChart = Native.Nvd3.renderChart
