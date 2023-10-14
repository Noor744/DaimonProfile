//
//  MomentView.swift
//  DaimonProfile
//
//  Created by Nour Abdelkader Mohamed Shaker on 12/10/2023.
//
//import SwiftUI
//
//struct MomentView: View {
//    @State private var isLiked = false
//    @State private var newComment = ""
//    var moment: Moment
//
//    var body: some View {
//        VStack(alignment: .leading, spacing: 8) {
//            // Display the image
//            Image(moment.image)
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(height: 200)
//
//            HStack {
//                Button(action: {
//                    isLiked.toggle()
//                }) {
//                    Image(systemName: isLiked ? "heart.fill" : "heart")
//                        .foregroundColor(isLiked ? .red : .gray)
//                }
//                Text("\(moment.likes) Likes")
//
//                Spacer()
//
//                Text("Comment")
//
//                Spacer()
//
//                Image(systemName: "ellipsis")
//            }
//            .padding(.horizontal)
//
//            Text(moment.caption)
//                .padding(.horizontal)
//
//            Divider()
//
//            // Comments
//            ForEach(moment.comments, id: \.self) { comment in
//                Text(comment)
//                    .padding(.horizontal)
//            }
//
//////            HStack {
//////                TextField("Add a comment", text: $newComment)
//////                    .textFieldStyle(RoundedBorderTextFieldStyle())
//////                    .padding(.horizontal)
//////
//////                Button(action: {
//////                     Add the new comment to the moment
//////                    moment.comments.append(newComment)
//////                    newComment = ""
//////                }) {
//////                    Text("Post")
//////                }
//////                .padding(.vertical, 8)
//////            }
//////            .background(Color.white)
//////            .cornerRadius(10)
//////            .padding(.vertical, 10)
//        }
//    }
//}
//struct MomentView_Previews: PreviewProvider {
//        static var previews: some View {
////            let sampleMoment = Moment(image: "yourImageName", likes: 0, caption: "Your caption", comments: [])
////            return MomentView(moment: sampleMoment)
//        }
//    }
