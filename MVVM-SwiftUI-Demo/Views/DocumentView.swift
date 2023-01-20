//
//  DocumentView.swift
//  MVVM-SwiftUI-Demo
//
//  Created by Harsimrat on 19/01/23.
//

import SwiftUI

struct DocumentView: View {
    var body: some View {
        VStack {
            Text("Document").font(.largeTitle)
        }.background(.orange)
    }
}

struct DocumentView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentView()
    }
}
