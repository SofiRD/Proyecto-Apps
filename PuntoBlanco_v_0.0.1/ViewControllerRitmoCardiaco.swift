//
//  ViewControllerRitmoCardiaco.swift
//  PuntoBlanco_v_0.0.1
//
//  Created by user179426 on 11/22/20.
//

import UIKit
import Charts

class ViewControllerRitmoCardiacos: UIViewController, ChartViewDelegate {

    @IBOutlet weak var vista: UIView!
    var barChart = BarChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barChart.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        barChart.frame = CGRect(x: 0, y: 0, width: self.vista.frame.size.width, height: self.vista.frame.size.height)
        
      
        vista.addSubview(barChart)
        
        barChart.fitScreen()
        
        var entries = [BarChartDataEntry]()
        
        for x in 0...10 {
            entries.append(BarChartDataEntry(x: Double(x), y: Double(x)))
        }
        
        let set = BarChartDataSet( entries: entries )
        set.colors = ChartColorTemplates.joyful()
        
        let data = BarChartData(dataSet: set)
        barChart.data = data
        
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
