//
//  CompanyAddViewController.swift
//  CompanyManagementApp
//
//  Created by Hasan Esat Tozlu on 16.11.2022.
//

import UIKit

class CompanyAddViewController: UIViewController {

    @IBOutlet weak var companyLogo: UIImageView!
    @IBOutlet weak var companyNameTextField: UITextField!
    @IBOutlet weak var companyBudgetTextField: UITextField!
    @IBOutlet weak var companyEstYearTextField: UITextField!
    @IBOutlet weak var createButton: UIButton!
    var company: Company?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        moveViewWithKeyboard()
        configureLogoImageViewGestureRecognizer()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let companyDetailVC = segue.destination as? CompanyDetailViewController
        companyDetailVC?.company = company
    }
    
    @IBAction func createButtonClicked(_ sender: Any) {
        if let name = companyNameTextField.text, let budget = companyBudgetTextField.text, let year = companyEstYearTextField.text {
            guard let budgetDouble    = Double(budget) else { return companyCreationAlert() }
            guard let yearInt         = Int(year) else { return companyCreationAlert() }
            company = Company(companyName: name, companyBudget: budgetDouble, establishmentYear: yearInt, logo: companyLogo.image)
            performSegue(withIdentifier: "toCompanyDetail", sender: nil)
        } else {
            companyCreationAlert()
        }
    }
    
    
    func companyCreationAlert() {
        alert(titleInput: "Check Input Fields", messageInput: "Please make sure you fill in the blanks correctly.")
    }
    
    
    func configureLogoImageViewGestureRecognizer() {
        companyLogo.isUserInteractionEnabled = true
        let imageTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectImage))
        companyLogo.addGestureRecognizer(imageTapRecognizer)
    }
    
    
    @objc func selectImage(){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        present(picker, animated: true, completion: nil)
    }
    

}


extension CompanyAddViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        companyLogo.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true)
    }
}
