//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Davide Aliti on 05/08/22.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - Properties
    var ripeningStages: [RipeningModel] = ripeningData
    
    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { ripeningStage in
                        RipeningView(ripening: ripeningStage)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - Preview
struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView()
    }
}
