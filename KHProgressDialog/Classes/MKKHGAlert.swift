//
//  KHProgressTest.swift
//  Pods
//
//  Created by Md. Kamrul Hasan on 2/21/17.
//
//

import UIKit

public class MKKHGAlert: UIView {
    
    var titleLabel:UILabel!
    var activitiIndicator:UIActivityIndicatorView!
    var imageView:UIImageView!
    
    var parentView:UIView!
    
    public func showLoadingAlert(view: UIView, title: String){
        parentView = view
        
        self.alpha = 0
        self.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width*0.4, height: UIScreen.main.bounds.width*0.4)
        view.addSubview(self)
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.extraLight)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurEffectView.clipsToBounds = true
        blurEffectView.layer.cornerRadius = 10
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        blurEffectView.center = view.center
        self.addSubview(blurEffectView)
        
        activitiIndicator = UIActivityIndicatorView(frame: self.bounds)
        
        activitiIndicator.activityIndicatorViewStyle =
            UIActivityIndicatorViewStyle.whiteLarge
        activitiIndicator.color = UIColor.black
        activitiIndicator.hidesWhenStopped = true
        activitiIndicator.startAnimating()
        
        blurEffectView.addSubview(activitiIndicator)
        
        let bundle = Bundle(for: MKKHGAlert.self)//(forClass: self)
        
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        imageView.image = UIImage(named: "ic_selected", in: bundle,compatibleWith: nil)
        imageView.alpha = 0
        imageView.center = self.center
        blurEffectView.addSubview(imageView)
        
        titleLabel = UILabel(frame: CGRect(x: 0, y: blurEffectView.bounds.height-30, width: blurEffectView.bounds.width, height: 30))
        titleLabel.text = title//"LOADING..."
        titleLabel.textAlignment = .center
        blurEffectView.addSubview(titleLabel)
        
        UIView.animate(withDuration: 0.4) {
            view.backgroundColor = view.backgroundColor?.withAlphaComponent(0.80)
            self.alpha = 1
        }
        
    }
    
    public func hideLoadingAlert(done: String){
        activitiIndicator.stopAnimating()
        titleLabel.text = done
        imageView.alpha = 1
        
        UIView.animate(withDuration: 1.0) {
            self.alpha = 0//removeFromSuperview()
            self.parentView.backgroundColor = self.parentView.backgroundColor?.withAlphaComponent(1.0)
            self.layoutIfNeeded()
        }
    }
    
    class func loadImage(name: String) -> UIImage? {
        let podBundle = Bundle(for: MKKHGAlert.self)
        if let url = podBundle.url(forResource: "KHProgressDialog", withExtension: "bundle") {
            let bundle = Bundle(url: url)
            return UIImage(named: name, in: bundle, compatibleWith: nil)
        }
        return nil
    }

}
