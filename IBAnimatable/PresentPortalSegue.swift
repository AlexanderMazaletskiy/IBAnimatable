//
//  Created by Tom Baranes on 17/04/16.
//  Copyright © 2016 IBAnimatable. All rights reserved.
//

import UIKit

public class PresentPortalSegue: UIStoryboardSegue {
  public override func perform() {
    destinationViewController.transitioningDelegate = PresenterManager.sharedManager().retrievePresenter(.Portal(direction: .Forward, params: []))
    sourceViewController.presentViewController(destinationViewController, animated: true, completion: nil)
  }
}
