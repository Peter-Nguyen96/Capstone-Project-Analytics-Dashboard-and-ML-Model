// Init function takes ID num and sets them as
// options of the dropdown menu
function init() {
    var selector = d3.select("#selDataset");
  
    d3.json("/Users/jordanbowman/Desktop/Capstone-Project-Analytics-Dashboard-and-ML-Model/Dashboard Code/static/js/advertising_data.js").then((data) => {
      console.log(data);
      var sampleNames = data.names;
      sampleNames.forEach((sample) => {
        selector
          .append("option")
          .text(sample)
          .property("value", sample);
      });
  })}
  
  init();

  // optionChanged function is called in html
  function optionChanged(newSample) {
    console.log(newSample);
    buildMetadata(newSample);
    buildCharts(newSample);
  }

  // buildMetadata function called in optionChanged
  function buildMetadata(sample) {
    d3.json("/Users/jordanbowman/Desktop/Capstone-Project-Analytics-Dashboard-and-ML-Model/Dashboard Code/static/js/advertising_data.js").then((data) => {
      var metadata = data.metadata;
      var resultsArray = metadata.filter(sampleObj => sampleObj.id == sample);
      var result = resultsArray[0]; //Because results are returned like an array =[0]
      var PANEL = d3.select("#sample-metadata");

      PANEL.html(""); //Clear content before other id gets called
      PANEL.append("h6").text(`Date: ${result.date}`);
      PANEL.append("h6").text(`Country: ${result.country}`);
      PANEL.append("h6").text(`Region: ${result.region}`);
      PANEL.append("h6").text(`Operator: ${result.operator}`);
      PANEL.append("h6").text(`Channel: ${result.channel}`);
      PANEL.append("h6").text(`Impressions: ${result.impressions}`);
      PANEL.append("h6").text(`Revenue: ${result.revenue}`);
      PANEL.append("h6").text(`CPM: ${result.cpm}`);
    });
  }