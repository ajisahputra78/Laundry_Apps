//
//  ViewController.swift
//  LaundryApps
//
//  Created by Aji_sahputra on 06/12/20.
//

import UIKit
import MapKit
import CoreLocation
import AVFoundation



class ViewController: UIViewController,UITabBarControllerDelegate, CLLocationManagerDelegate, UISearchBarDelegate {
  
  
  //LogIn-------------------------------------------------------------------------------------
  
  @IBOutlet weak var phone_email: UITextField!
  @IBOutlet weak var pass: UITextField!
  
  @IBAction func loginPressed(_ sender: Any) {
    
    let phoneEmail : String = phone_email.text!
    let Passwoard : String = pass.text!
    
    if phoneEmail.isEmpty {
      
      let attributedString = NSAttributedString(string: "Gagal!", attributes: [
                  NSAttributedString.Key.font : UIFont.systemFont(ofSize: 25),
                  NSAttributedString.Key.foregroundColor : UIColor.red
              ])
      
      let alert = UIAlertController(title: "", message: "Masukan Email Anda!", preferredStyle: .alert)
      
      alert.setValue(attributedString, forKey: "attributedTitle")
      
      let OkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
      alert.addAction(OkAction)
      
      present(alert, animated: true, completion: nil)

    } else {
      print(phoneEmail)
    }
    
    if Passwoard.isEmpty {
      
      let attributedString = NSAttributedString(string: "Gagal!", attributes: [
                  NSAttributedString.Key.font : UIFont.systemFont(ofSize: 25),
                  NSAttributedString.Key.foregroundColor : UIColor.red
              ])
      
      let alert = UIAlertController(title: "", message: "Masukan Passwoard Anda!", preferredStyle: .alert)
      
      alert.setValue(attributedString, forKey: "attributedTitle")
      
      let OkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
      alert.addAction(OkAction)
      
      present(alert, animated: true, completion: nil)

    } else {
      print(Passwoard)
    }
    
    if (phoneEmail == "admin@admin.com") {
      
      print("Welcome Back")
      
      
    } else {
      
      let attributedString = NSAttributedString(string: "Masukan Email dengan Benar!", attributes: [
                  NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15),
                  NSAttributedString.Key.foregroundColor : UIColor.red
              ])
      
      let alert = UIAlertController(title: "Gagal", message: "", preferredStyle: .alert)
      
      alert.setValue(attributedString, forKey: "attributedMessage")
      
      let OkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
      alert.addAction(OkAction)
      
      present(alert, animated: true, completion: nil)
      
    }
    
    if (Passwoard == "admin") {
      
      print("Welcome Back")
      
      
    } else {
      
      let attributedString = NSAttributedString(string: "Masukan Passwoard dengan Benar!", attributes: [
                  NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15),
                  NSAttributedString.Key.foregroundColor : UIColor.red
              ])
      
      let alert = UIAlertController(title: "Gagal", message: "", preferredStyle: .alert)
      
      alert.setValue(attributedString, forKey: "attributedMessage")
      
      let OkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
      alert.addAction(OkAction)
      
      present(alert, animated: true, completion: nil)
      
    }
    
  }
  //End LogIn-------------------------------------------------------------------------------------------
  
  //Creat An Account-----------------------------------------------------------------------------------
    //SingUp-------------------------------------------------------------------------------------------
  
      @IBOutlet weak var name: UITextField!
      @IBOutlet weak var phone: UITextField!
      @IBOutlet weak var email: UITextField!
      @IBOutlet weak var paswrd: UITextField!
  
      @IBAction func signIn(_ sender: Any) {
    
          let Nama : String = name.text!
          let NoHp : String = phone.text!
          let Email : String = email.text!
          let Sandi : String = paswrd.text!
    
          if Nama.isEmpty{
      
              let attributedString = NSAttributedString(string: "Gagal !", attributes: [
                  NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20),
                  NSAttributedString.Key.foregroundColor : UIColor.red
              ])
      
              let alert = UIAlertController(title: "", message: "Masukan Nama!", preferredStyle: .alert)
      
              alert.setValue(attributedString, forKey: "attributedTitle")
      
              let OkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(OkAction)
      
              present(alert, animated: true, completion: nil)
            
            return;

          } else {
            print(Nama)
          }
        
          if NoHp.isEmpty {
      
              let attributedString = NSAttributedString(string: "Gagal !", attributes: [
                  NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20),
                  NSAttributedString.Key.foregroundColor : UIColor.red
              ])
      
              let alert = UIAlertController(title: "", message: "Masukan Nomer Handphone Anda!", preferredStyle: .alert)
      
              alert.setValue(attributedString, forKey: "attributedTitle")
      
              let OkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(OkAction)
      
              present(alert, animated: true, completion: nil)
              
            return
          } else {
            print(NoHp)
          }
        
          if Email.isEmpty {
      
              let attributedString = NSAttributedString(string: "Gagal !", attributes: [
                  NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20),
                  NSAttributedString.Key.foregroundColor : UIColor.red
              ])
      
              let alert = UIAlertController(title: "", message: "Masukan Email Anda!", preferredStyle: .alert)
      
              alert.setValue(attributedString, forKey: "attributedTitle")
      
              let OkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(OkAction)
      
              present(alert, animated: true, completion: nil)

          } else {
            print(Email)
          }
        
          if Sandi.isEmpty {
      
              let attributedString = NSAttributedString(string: "Gagal !", attributes: [
                  NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20),
                  NSAttributedString.Key.foregroundColor : UIColor.red
              ])
      
              let alert = UIAlertController(title: "", message: "Masukan Sandi Anda!", preferredStyle: .alert)
      
              alert.setValue(attributedString, forKey: "attributedTitle")
      
              let OkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(OkAction)
      
              present(alert, animated: true, completion: nil)

          } else {
            print(Sandi)
          }
        }
  
    //End SingUp-----------------------------------------------------------------------------------------
  
    //update resident------------------------------------------------------------------------------------
  
  @IBOutlet weak var acceptOutlet: UISwitch!
  @IBOutlet weak var addressField: UITextField!
        
      @IBAction func `continue`(_ sender: Any) {
    
          let Alamat : String = addressField.text!
    
        if Alamat.isEmpty {
      
              let attributedString = NSAttributedString(string: "Masukan Alamat Anda / Select Place by Map!", attributes: [
                  NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15),
                  NSAttributedString.Key.foregroundColor : UIColor.red
                ])
      
              let alert = UIAlertController(title: "Gagal", message: "", preferredStyle: .alert)
      
              alert.setValue(attributedString, forKey: "attributedMessage")
      
              let OkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
              alert.addAction(OkAction)
      
              present(alert, animated: true, completion: nil)

            }
        
        if acceptOutlet.isOn {
          print("Sukses")
          
        } else {
          let attributedString = NSAttributedString(string: "Your Have Accept Terms & Conditions ", attributes: [
              NSAttributedString.Key.font : UIFont.systemFont(ofSize: 15),
              NSAttributedString.Key.foregroundColor : UIColor.red
            ])
  
          let alert = UIAlertController(title: "Gagal", message: "", preferredStyle: .alert)
  
          alert.setValue(attributedString, forKey: "attributedMessage")
  
          let OkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
          alert.addAction(OkAction)
  
          present(alert, animated: true, completion: nil)
        }
      }
    
    //End Update Resident-------------------------------------------------------------------------------
  
    //Search Place by map------------------------------------------------------------------------------
  
     @IBOutlet weak var mapView: MKMapView!
 
  
      @IBAction func searchLocationButton(_ sender: Any) {
    
          let searchController = UISearchController(searchResultsController: nil)
          searchController.searchBar.delegate = self
          present(searchController, animated: true, completion: nil)
    
        }
  
      func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
    
          UIApplication.shared.beginIgnoringInteractionEvents()
    
          let activityIndicator = UIActivityIndicatorView()
          activityIndicator.style = UIActivityIndicatorView.Style.gray
          activityIndicator.center = self.view.center
          activityIndicator.hidesWhenStopped = true
          activityIndicator.startAnimating()
    
          self.view.addSubview(activityIndicator)
    
          searchBar.resignFirstResponder()
          dismiss(animated: true, completion: nil)
    
          let searchRequest = MKLocalSearch.Request()
          searchRequest.naturalLanguageQuery = searchBar.text
    
          let activeSearch = MKLocalSearch(request: searchRequest)
    
          activeSearch.start {
              (response, error) in
      
              activityIndicator.stopAnimating()
              UIApplication.shared.endIgnoringInteractionEvents()
      
              if response == nil {
        
                  print("Error")
        
                }
                else {
        
                    let latitude = response!.boundingRegion.center.latitude
                    let longitute = response!.boundingRegion.center.longitude
        
                    let annotation = MKPointAnnotation()
                    annotation.title = searchBar.text
                    annotation.coordinate = CLLocationCoordinate2DMake(latitude, longitute)
                    self.mapView.addAnnotation(annotation)
        
                    let cordinate : CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitute)
                    let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
                    let region = MKCoordinateRegion(center: cordinate, span: span)
        
                    self.mapView.setRegion(region, animated: true)
        
                  }
            }
        }
  
      @IBAction func doneButton(_ sender: Any) {
    
        }
  
    //End Search Place by map---------------------------------------------------------------------------
  
  //End Creat An Account--------------------------------------------------------------------------------
  
  //Order-----------------------------------------------------------------------------------------------
  
  //link to manyu maps
  @IBAction func selectLaundry(_ sender: Any) {
    
    let application = UIApplication.shared
    let secondAppPath = "Second://"
    let appUrl = URL (string: secondAppPath)!
    let websiteUrl = URL (string: "https://ajisaputro.netlify.app")!
    
    
    if application.canOpenURL(appUrl) {
      application.open(appUrl, options: [:], completionHandler: nil)
      
    } else {
      application.open(websiteUrl)
    }
  }
  
  @IBOutlet weak var fromOrder: UITextField!
  @IBOutlet weak var quantityOrder: UITextField!
  
  @IBAction func confirmOrder(_ sender: Any) {
    
    let from : String = fromOrder.text!
    let quantity : String = quantityOrder.text!
    
    if from.isEmpty {
      
      let attributedString = NSAttributedString(string: "Gagal !", attributes: [
                  NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20),
                  NSAttributedString.Key.foregroundColor : UIColor.red
              ])
      
      let alert = UIAlertController(title: "", message: "Masukan Tujuan Laundry Anda!", preferredStyle: .alert)
      
      alert.setValue(attributedString, forKey: "attributedTitle")
      
      
      let OkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
      alert.addAction(OkAction)
      
      present(alert, animated: true, completion: nil)

    } else {
      print(from)
    }
    
    if quantity.isEmpty {
      
      let attributedString = NSAttributedString(string: "Gagal !", attributes: [
                  NSAttributedString.Key.font : UIFont.systemFont(ofSize: 20),
                  NSAttributedString.Key.foregroundColor : UIColor.red
              ])
      
      let alert = UIAlertController(title: "", message: "Masukan Berat Laundryan Anda!", preferredStyle: .alert)
      
      alert.setValue(attributedString, forKey: "attributedTitle")
      
      
      let OkAction = UIAlertAction(title: "OK", style: .default, handler: nil)
      alert.addAction(OkAction)
      
      present(alert, animated: true, completion: nil)

    } else {
      print(quantity)
    }
  }
  
  //End Order------------------------------------------------------------------------------------------
  
  //Drak Mode--------------------------------------------------------------------------------------------
  
  @IBOutlet weak var adminLabel: UILabel!
 
  @IBOutlet weak var drakLabel: UILabel!
  @IBOutlet weak var drakModeOutlet: UISwitch!
  
  
  @IBAction func drakAction(_ sender: Any) {
    
    if drakModeOutlet.isOn == true {
      view.backgroundColor = UIColor.black
      adminLabel.textColor = UIColor.white
      
    } else {
      view.backgroundColor = UIColor.white
      adminLabel.textColor = UIColor.black
    }
  }
 //end Dark Mode-----------------------------------------------------------------------------------------
  
// History----------------------------------------------------------------------------------------------
  @IBOutlet weak var viewContainer: UIView!
  
  var allHistoryView : UIView!
  var inProgrresHistoryView : UIView!
  var completedHistoryView : UIView!
  
  @IBAction func switchViewAction(_ sender: UISegmentedControl) {
    
    allHistoryView = allHistoryViewController().view
    inProgrresHistoryView = inProgrresHistory().view
    completedHistoryView = completedHistory().view
    viewContainer.addSubview(allHistoryView)
    viewContainer.addSubview(inProgrresHistoryView)
    viewContainer.addSubview(completedHistoryView)
    
    switch sender.selectedSegmentIndex {
    case 0:
      viewContainer.bringSubviewToFront(allHistoryView)
      break
    case 1:
      viewContainer.bringSubviewToFront(inProgrresHistoryView)
      break
    case 2:
      viewContainer.bringSubviewToFront(completedHistoryView)
      break
    default:
      break
    }
  }
  //end History----------------------------------------------------------------------------------------
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
}


