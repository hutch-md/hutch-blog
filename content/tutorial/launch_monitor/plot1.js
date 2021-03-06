(function(){ 

        window.PLOTLYENV={'BASE_URL': 'https://plotly.com'}; 

        

        var gd = document.getElementById('plot1') 

        var resizeDebounce = null; 


        function resizePlot() { 

          var bb = gd.getBoundingClientRect(); 

          Plotly.relayout(gd, { 

            width: bb.width, 

              height: bb.height 

            }); 

          } 


          Plotly.plot(gd,  

              {
  "visdat": {
    "10cd05529d520": ["function () ", "plotlyVisDat"]
  },
  "cur_data": "10cd05529d520",
  "attrs": {
    "10cd05529d520": {
      "alpha_stroke": 1,
      "sizes": [10, 100],
      "spans": [1, 20],
      "type": "splom",
      "dimensions": [
        {
          "label": "total",
          "values": {}
        },
        {
          "label": "carry",
          "values": {}
        },
        {
          "label": "launch_angle",
          "values": {}
        },
        {
          "label": "backspin",
          "values": {}
        },
        {
          "label": "club_speed",
          "values": {}
        },
        {
          "label": "efficiency",
          "values": {}
        },
        {
          "label": "angle_of_attack",
          "values": {}
        }
      ],
      "text": {},
      "diagonal": {
        "visible": false
      },
      "marker": {
        "color": "#ef553b",
        "size": 5,
        "line": {
          "width": 1,
          "color": "rgb(230,230,230)"
        }
      },
      "inherit": true
    }
  },
  "layout": {
    "margin": {
      "b": 40,
      "l": 60,
      "t": 25,
      "r": 10
    },
    "title": "Interactive Scatterplot of Launch Monitor Data",
    "hovermode": "closest",
    "dragmode": "select",
    "plot_bgcolor": "rgba(240,240,240, 0.95)",
    "xaxis": {
      "domain": [],
      "showline": false,
      "zeroline": false,
      "gridcolor": "#ffff",
      "titlefont": {
        "size": 13
      }
    },
    "yaxis": {
      "domain": [],
      "showline": false,
      "zeroline": false,
      "gridcolor": "#ffff",
      "titlefont": {
        "size": 13
      }
    },
    "xaxis2": {
      "domain": [],
      "showline": false,
      "zeroline": false,
      "gridcolor": "#ffff",
      "titlefont": {
        "size": 13
      }
    },
    "yaxis2": {
      "domain": [],
      "showline": false,
      "zeroline": false,
      "gridcolor": "#ffff",
      "titlefont": {
        "size": 13
      }
    },
    "xaxis3": {
      "domain": [],
      "showline": false,
      "zeroline": false,
      "gridcolor": "#ffff",
      "titlefont": {
        "size": 13
      }
    },
    "yaxis3": {
      "domain": [],
      "showline": false,
      "zeroline": false,
      "gridcolor": "#ffff",
      "titlefont": {
        "size": 13
      }
    },
    "xaxis4": {
      "domain": [],
      "showline": false,
      "zeroline": false,
      "gridcolor": "#ffff",
      "nticks": 3,
      "titlefont": {
        "size": 13
      }
    },
    "yaxis4": {
      "domain": [],
      "showline": false,
      "zeroline": false,
      "gridcolor": "#ffff",
      "titlefont": {
        "size": 13
      }
    },
    "xaxis5": {
      "domain": [],
      "showline": false,
      "zeroline": false,
      "gridcolor": "#ffff",
      "titlefont": {
        "size": 13
      }
    },
    "yaxis5": {
      "domain": [],
      "showline": false,
      "zeroline": false,
      "gridcolor": "#ffff",
      "titlefont": {
        "size": 13
      }
    },
    "xaxis6": {
      "domain": [],
      "showline": false,
      "zeroline": false,
      "gridcolor": "#ffff",
      "titlefont": {
        "size": 13
      }
    },
    "yaxis6": {
      "domain": [],
      "showline": false,
      "zeroline": false,
      "gridcolor": "#ffff",
      "titlefont": {
        "size": 13
      }
    },
    "showlegend": false
  },
  "source": "A",
  "config": {
    "modeBarButtonsToAdd": ["hoverclosest", "hovercompare"],
    "showSendToCloud": false
  },
  "data": [
    {
      "type": "splom",
      "dimensions": [
        {
          "label": "total",
          "values": [282.8, 267.2, 287.7, 282.9, 280.1, 283, 290.2, 266.5, 289.5, 268, 289.2, 257.5, 277, 293.5, 262.1, 279.7, 271.2, 280.7, 286.8, 295.3, 308.4, 294, 269.7, 286.2, 289, 266.1, 303, 298.8, 267.3, 249, 277.8, 276.3, 271.6, 277.6, 256, 281.8, 252.7, 273.3, 261.3, 275.3, 270.4, 260.4, 271, 250.4, 261.4, 266.7, 280.4, 267.1, 277.3, 275.8, 270.7, 281.1, 276.2, 280.3, 255, 277.9, 275.8, 282.9, 272, 270.1, 272.8]
        },
        {
          "label": "carry",
          "values": [264.8, 250.6, 268.3, 265.9, 262.5, 257.1, 271.7, 249.5, 268.4, 251.7, 271.4, 231.4, 260.8, 275.7, 247.7, 263.1, 254.9, 264.5, 269.8, 276.7, 285.2, 275.8, 254.6, 269.2, 271, 251.2, 283.6, 280.1, 251.3, 234.6, 259.6, 256.5, 244.1, 255.7, 241.4, 261.8, 219.9, 253.8, 246.1, 255.4, 254.5, 238.2, 255.1, 237.1, 245.4, 251.4, 261.1, 251.3, 259.9, 258.6, 254, 263, 252.7, 262.7, 240.1, 260.2, 258.6, 264.2, 255.8, 252.4, 256.4]
        },
        {
          "label": "launch_angle",
          "values": [17.3, 13.1, 17, 16.4, 16, 16, 17.6, 13.2, 15.4, 16.2, 16.6, 13.1, 18.5, 16.9, 17.6, 17.3, 15.1, 17.5, 14.9, 18.7, 15.1, 17.1, 15.7, 16.6, 16.4, 17.2, 16.4, 17.7, 18, 11.7, 13.9, 12.1, 14.1, 14.7, 10.6, 13, 3.9, 13.9, 12.2, 11.4, 13.8, 14, 13.4, 13.9, 10.3, 13.9, 13, 11.9, 12.6, 13.7, 10.8, 12.9, 14.5, 13.9, 12.3, 13, 12.7, 13, 12.5, 15.4, 14.2]
        },
        {
          "label": "backspin",
          "values": [3074, 3669, 2474, 3114, 3223, 1123, 2573, 3218, 2173, 3620, 2920, 1263, 3267, 2989, 3866, 3422, 3645, 3299, 3157, 2574, 1843, 2751, 3774, 3156, 3108, 4206, 2212, 2186, 3680, 4348, 3148, 2763, 1582, 2092, 4271, 2666, 2496, 2903, 4124, 2860, 3670, 2077, 3546, 4412, 4014, 3721, 2679, 3763, 3138, 3224, 3677, 3077, 2105, 2989, 4312, 3138, 3600, 2731, 3661, 3068, 3335]
        },
        {
          "label": "club_speed",
          "values": [109.1, 109.6, 108.7, 109.9, 110.3, 110.2, 108.8, 108.6, 108.9, 108.9, 111.3, 110.5, 110.2, 112.9, 111.2, 111.7, 111.2, 110.9, 111.2, 110.6, 110.9, 110.9, 111.3, 110.8, 110.7, 111.9, 112.1, 112.1, 110.9, 109.2, 108.9, 109.1, 102.4, 105.6, 109.9, 108.5, 109.4, 109, 109.7, 109.7, 110.2, 107.2, 109.7, 109, 109.7, 110.1, 109.3, 110.1, 109.4, 110, 111.5, 110.3, 107.2, 109.5, 109.9, 109.8, 110.8, 109.4, 110.7, 107.9, 109.7]
        },
        {
          "label": "efficiency",
          "values": [1.45, 1.42, 1.41, 1.45, 1.43, 1.44, 1.43, 1.39, 1.45, 1.43, 1.44, 1.46, 1.44, 1.45, 1.41, 1.44, 1.42, 1.44, 1.46, 1.43, 1.45, 1.45, 1.43, 1.46, 1.46, 1.45, 1.45, 1.44, 1.42, 1.4, 1.43, 1.44, 1.4, 1.38, 1.41, 1.42, 1.39, 1.39, 1.43, 1.44, 1.43, 1.33, 1.43, 1.42, 1.42, 1.42, 1.43, 1.43, 1.44, 1.42, 1.43, 1.43, 1.37, 1.42, 1.4, 1.43, 1.44, 1.44, 1.43, 1.4, 1.42]
        },
        {
          "label": "angle_of_attack",
          "values": [6.8, 7.1, 8.2, 7, 6.7, 7.1, 7.8, 7.6, 7.2, 7.3, 7.1, 6.3, 6.8, 6.7, 7.2, 8.4, 6.9, 7, 7.4, 6.5, 5.6, 6.7, 7.3, 6.2, 6.9, 7.3, 6.9, 7.8, 7.6, 3.2, 3.6, 3.9, 6.3, 4.6, 2.9, 3.5, 3.7, 3.1, 3.5, 4, 3.3, 3.7, 3.3, 3, 3.8, 4.1, 3.6, 3.4, 3.6, 2.5, 3, 2.7, 3.6, 3.5, 3.4, 2.8, 3.6, 3.5, 2.7, 4.2, 4.1]
        }
      ],
      "text": ["Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "Driver", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood", "3-Wood"],
      "diagonal": {
        "visible": false
      },
      "marker": {
        "color": "#ef553b",
        "size": 5,
        "line": {
          "color": "rgb(230,230,230)",
          "width": 1
        }
      },
      "frame": null,
      "showupperhalf": false
    }
  ],
  "highlight": {
    "on": "plotly_click",
    "persistent": false,
    "dynamic": false,
    "selectize": false,
    "opacityDim": 0.2,
    "selected": {
      "opacity": 1
    },
    "debounce": 0
  },
  "shinyEvents": ["plotly_hover", "plotly_click", "plotly_selected", "plotly_relayout", "plotly_brushed", "plotly_brushing", "plotly_clickannotation", "plotly_doubleclick", "plotly_deselect", "plotly_afterplot", "plotly_sunburstclick"],
  "base_url": "https://plot.ly"
}
           

                  ); 

           }()); 

  
