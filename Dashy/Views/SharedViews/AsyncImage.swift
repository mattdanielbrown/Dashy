//
//  AsyncImage.swift
//  Dashy
//
//  Created by Aayush Pokharel on 2021-10-13.
//

import SwiftUI
import SDWebImageSwiftUI

struct AsyncImage: View {
    let url: String
    var body: some View {
        WebImage(url: URL(string: url)!)
           // Supports options and context, like `.delayPlaceholder` to show placeholder only when error
           .onSuccess { image, data, cacheType in
               print(image)
               // Success
               // Note: Data exist only when queried from disk cache or network. Use `.queryMemoryData` if you really need data
           }
           .resizable() // Resizable like SwiftUI.Image, you must use this modifier or the view will use the image bitmap size
           .placeholder(Image(systemName: "photo")) // Placeholder Image
           // Supports ViewBuilder as well
           .placeholder {
               Rectangle().foregroundColor(.gray)
           }
           .indicator(.activity) // Activity Indicator
           .transition(.fade(duration: 0.5)) // Fade Transition with duration
           .scaledToFill()
           .frame(width: 300, height: 300, alignment: .center)
    }
}

struct AsyncImage_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImage(url: "https://www.washingtonpost.com/transportation/2021/10/13/southwest-american-airlines-texas-vaccine-mandate-ban/")
    }
}
