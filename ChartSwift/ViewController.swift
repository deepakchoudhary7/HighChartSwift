//
//  ViewController.swift
//  ChartSwift
//
//  Created by Tutist Dev on 27/03/19.
//  Copyright © 2019 Tutist Dev. All rights reserved.
//

import UIKit
import Highcharts

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            self.pie()
    }


    func column() {
        let chartView = HIChartView(frame: view.bounds)
        
        let options = HIOptions()
        
        let chart = HIChart()
        chart.type = "column"
        
        let title = HITitle()
        title.text = "Stacked column chart"
        
        let xaxis = HIXAxis()
        // xaxis.categories = ["Apples", "Oranges", "Pears", "Grapes", "Bananas"]
        
        let yaxis = HIYAxis()
        
        yaxis.min = NSNumber(value: 0)
        yaxis.title = HITitle()
        // yaxis.title.text = "Total fruit consumption"
        
        let tooltip = HITooltip()
        tooltip.pointFormat = "<span style=\"color:{series.color}\">{series.name}</span>: <b>{point.y}</b> ({point.percentage:.0f}%)<br/>"
        tooltip.shared = NSNumber(value: true)
        
        let plotoptions = HIPlotOptions()
        plotoptions.column = HIColumn()
        plotoptions.column.stacking = "percent"
        
        let column1 = HIColumn()
        // column1.name = "John"
        column1.data = [NSNumber(value: 5), NSNumber(value: 3), NSNumber(value: 4), NSNumber(value: 7), NSNumber(value: 2)]
        
        let column2 = HIColumn()
        // column2.name = "Jane"
        column2.data = [NSNumber(value: 2), NSNumber(value: 2), NSNumber(value: 3), NSNumber(value: 2), NSNumber(value: 1)]
        
        //        let column3 = HIColumn()
        //        column3.name = "Joe"
        //        column3.data = [NSNumber(value: 3), NSNumber(value: 4), NSNumber(value: 4), NSNumber(value: 2), NSNumber(value: 5)]
        
        options.chart = chart
        options.title = title
        options.xAxis = [xaxis]
        options.yAxis = [yaxis]
        options.tooltip = tooltip
        options.plotOptions = plotoptions
        options.series = [column1, column2]
        
        chartView.options = options
        
        view.addSubview(chartView)
    }
    
    func pie() {
        let chartView = HIChartView(frame: view.bounds)
        
        let options = HIOptions()
        
        let chart = HIChart()
        chart.plotBackgroundColor = HIColor()
        chart.plotBorderWidth = NSNumber()
        chart.plotShadow = NSNumber(value: false)
        chart.type = "pie"
        
        let title = HITitle()
        title.text = "Browser market shares January, 2015 to May, 2015"
        
        let tooltip = HITooltip()
        tooltip.pointFormat = "{series.name}: <b>{point.percentage:.1f}%</b>"
        
        let plotoptions = HIPlotOptions()
        plotoptions.pie = HIPie()
        plotoptions.pie.allowPointSelect = NSNumber(value: true)
        plotoptions.pie.cursor = "pointer"
        plotoptions.pie.dataLabels = HIDataLabels()
        plotoptions.pie.dataLabels.enabled = NSNumber(value: false)
        plotoptions.pie.showInLegend = NSNumber(value: true)
        plotoptions.pie.dataLabels.inside = true
        plotoptions.pie.dataLabels.style = HICSSObject()
        plotoptions.pie.dataLabels.style.color = "black"
        
        let pie = HIPie()
        pie.name = "Brands"
        pie.data = [
            [
                "name": "Microsoft Internet Explorer",
                "y": NSNumber(value: 56.33)
            ],
            [
                "name": "Chrome",
                "y": NSNumber(value: 24.03),
                "sliced": NSNumber(value: true),
                "selected": NSNumber(value: true)
            ],
            [
                "name": "Firefox",
                "y": NSNumber(value: 10.38)
            ],
            [
                "name": "Safari",
                "y": NSNumber(value: 4.77)
            ],
            [
                "name": "Opera",
                "y": NSNumber(value: 0.91)
            ],
            [
                "name": "Proprietary or Undetectable",
                "y": NSNumber(value: 0.2)
            ]
        ]
        
        options.chart = chart
        options.title = title
        options.tooltip = tooltip
        options.plotOptions = plotoptions
        options.series = [pie]
        
        chartView.options = options
        
        view.addSubview(chartView)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    func newPie() {
        var chartView = HIChartView(frame: view.bounds)
        
        var options = HIOptions()
        
        var chart = HIChart()
        chart.plotBackgroundColor = HIColor()
        chart.plotBorderWidth = NSNumber()
        chart.plotShadow = NSNumber(value: false)
        chart.type = "pie"
        
        var colors = [
            HIColor(rgb: 15, green: 72, blue: 127),
            HIColor(rgb: 52, green: 109, blue: 164),
            HIColor(rgb: 88, green: 145, blue: 200),
            HIColor(rgb: 124, green: 181, blue: 236),
            HIColor(rgb: 160, green: 217, blue: 255),
            HIColor(rgb: 196, green: 253, blue: 255),
            HIColor(rgb: 233, green: 255, blue: 255),
            HIColor(rgb: 255, green: 255, blue: 255),
            HIColor(rgb: 255, green: 255, blue: 255),
            HIColor(rgb: 255, green: 255, blue: 255)
        ]
        
        var title = HITitle()
        title.text = "Browser market shares at a specific website, 2014"
        
        var tooltip = HITooltip()
        tooltip.pointFormat = "{series.name}: <b>{point.percentage:.1f}%</b>"
        
        var plotoptions = HIPlotOptions()
        plotoptions.pie = HIPie()
        plotoptions.pie.allowPointSelect = NSNumber(value: true)
        plotoptions.pie.cursor = "pointer"
        plotoptions.pie.dataLabels = HIDataLabels()
        plotoptions.pie.dataLabels.enabled = NSNumber(value: true)
        plotoptions.pie.dataLabels.format = "<b>{point.name}</b>: {point.percentage:.1f} %"
        plotoptions.pie.dataLabels.style = HICSSObject()
        plotoptions.pie.dataLabels.style.color = "black"
        
        var pie = HIPie()
        pie.name = "Brands"
        pie.data = [
            [
                "name": "Microsoft Internet Explorer",
                "y": NSNumber(value: 56.33)
            ],
            [
                "name": "Chrome",
                "y": NSNumber(value: 24.03),
                "sliced": NSNumber(value: true),
                "selected": NSNumber(value: true)
            ],
            [
                "name": "Firefox",
                "y": NSNumber(value: 10.38)
            ],
            [
                "name": "Safari",
                "y": NSNumber(value: 4.77)
            ],
            [
                "name": "Opera",
                "y": NSNumber(value: 0.91)
            ],
            [
                "name": "Proprietary or Undetectable",
                "y": NSNumber(value: 0.2)
            ]
        ]
        
        options.chart = chart
       // options.colors = colors
        options.title = title
        options.tooltip = tooltip
        options.plotOptions = plotoptions
        options.series = [pie]
        
        chartView.options = options
        
        view.addSubview(chartView)
    }
}

