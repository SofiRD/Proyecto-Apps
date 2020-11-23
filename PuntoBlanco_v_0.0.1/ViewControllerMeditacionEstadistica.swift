//
//  ViewControllerMeditacionEstadistica.swift
//  PuntoBlanco_v_0.0.1
//
//  Created by user179426 on 11/22/20.
//

import UIKit

import Charts

class ViewControllerMeditacionEstadistica: UIViewController, ChartViewDelegate {

    @IBOutlet weak var vista: UIView!
    
    var lineChart = LineChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lineChart.delegate = self
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        lineChart.frame = CGRect(x: 0, y: 0, width: self.vista.frame.size.width, height: self.vista.frame.size.height)
        
      
        vista.addSubview(lineChart)
        
        lineChart.fitScreen()
        
        var entries = [ChartDataEntry]()
        
        for x in 0...10 {
            entries.append(BarChartDataEntry(x: Double(x), y: Double(x)))
        }
        
        let set = LineChartDataSet( entries: entries )
        set.colors = ChartColorTemplates.material()
        let data = LineChartData(dataSet: set)
        lineChart.data = data
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view
     controller.
    }
    */

}
}
