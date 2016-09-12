//import Maybe, Native.Scheduler //

var _elm_lang$nv3d$Native_Nvd3 = function() {

function stackedAreaChart(options) {
    var chart = 
        nv.models.stackedAreaChart()
        // Data accessor functions...
        .x(options.px)
        .y(options.py)
        // Tooltips which show all data point
        .useInteractiveGuideline(options.useInteractiveGuideLine)
        //Let's move the y-axis to the right side.
        .rightAlignYAxis(options.rightAlignYAxis)      
        //Allow user to choose 'Stacked', 'Stream', 'Expanded' mode.
        .showControls(true)       

/*
        .margin({right: 100})
s. Very nice!
        // .transitionDuration(500)
        .clipEdge(true);
    chart.xAxis.axisLabel(options.xLabel);
    chart.yAxis.axisLabel(options.yLabel);
*/
    return chart;  
}

function setChartData(tag,data) {
  return d3.select(tag).datum(data);
}

function updateData(chartData,data) {
  chartData.datum(data);
  return chartData;
}

function renderChart(chartData,chart) {
  chartData.call(chart);
  nv.utils.windowResize(chart.update);
  return chart;
}

/*
function stackedAreaChart(data) {
    nv.addGraph(function() {
      var chart = nv.models.stackedAreaChart()
                  .margin({right: 100})
                  .x(function(d) { return d[0] })   //We can modify the data accessor functions...
                  .y(function(d) { return d[1] })   //...in case your data is formatted differently.
                  .useInteractiveGuideline(true)    //Tooltips which show all data points. Very nice!
                  .rightAlignYAxis(true)      //Let's move the y-axis to the right side.
                  .transitionDuration(500)
                  .showControls(true)       //Allow user to choose 'Stacked', 'Stream', 'Expanded' mode.
                  .clipEdge(true);

      //Format x-axis labels with custom function.
      chart.xAxis
          .tickFormat(function(d) { 
            return d3.time.format('%x')(new Date(d)) 
      });

      chart.yAxis
          .tickFormat(d3.format(',.2f'));

      d3.select('#chart')
        .datum(data)
        .call(chart);

      nv.utils.windowResize(chart.update);

      return chart;
    });
}
*/

// Exports 
return {
    stackedAreaChart: stackedAreaChart
    , renderChart: renderChart
    , setChartData: setChartData
    , updateData: updateData
};

}();
