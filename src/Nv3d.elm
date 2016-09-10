
module Nv3d exposing 
  ( Chart
  , ChartData
  , ChartOptions
  , stackedAreaChart
  , setChartData
  , updateData
  , renderChart
  )

{-| The Nv3d wrapper 

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
import Native.Nv3d

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
stackedAreaChart = Native.Nv3d.stackedAreaChart

{-| Sets the associated tag and data of a ChartData -}
setChartData : String -> data -> ChartData
setChartData = Native.Nv3d.setChartData

{-| Update the associated data of a ChartData -}
updateData : ChartData -> data -> ChartData
updateData = Native.Nv3d.updateData

{-| Render a Chart with the ChartData -}
renderChart : ChartData -> Chart -> Chart
renderChart = Native.Nv3d.renderChart
