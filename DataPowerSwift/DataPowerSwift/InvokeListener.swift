/**
 * Copyright 2016 IBM Corp.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import Foundation
import IBMMobileFirstPlatformFoundation

class InvokeListener: NSObject, WLDelegate{
    
    let vc : ViewController
    
    init(vc: ViewController){
        self.vc = vc
    }
    
    func onSuccess(response: WLResponse!) {
        NSLog(response.responseText)
        let amount = response.responseJSON["data"] as! String
        self.vc.alert("Success", msg: "Balance: " + amount)
    }
    
    func onFailure(response: WLFailResponse!) {
        NSLog(response.description)
    }
}