//
//  ContentView.swift
//  DaimonProfile
//
//  Created by Nour Abdelkader Mohamed Shaker on 07/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isEditingNickname = false
    @State private var newNickname = "John Doe" // Initial nickname
    @State private var caption = "A passionate SwiftUI developer"
    @State private var followingCount = 500
    @State private var followersCount = 1000
    @State private var moments: [Moment] = []
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    // Profile Pict
                    
                    Image("sadd") // Replace with your image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 4)
                        )
                        .padding(.top, 20)
                    
                    // Edit Profile Picture Button
                    Button(action: {
                        // Implement image editing logic here
                    }) {
                        Text("Edit Profile Picture")
                            .foregroundColor(.blue)
                    }
                    
                    Spacer()
                    
                    // Nickname
//                    Text("Nickname:")
//                        .font(.headline)
//                        .padding(.top, 20)
                    
                    if isEditingNickname {
                        TextField("Enter your nickname", text: $newNickname)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.horizontal, 20)
                    } else {
                        Text(newNickname)
                            .font(.title)
                    }
                    
                    Button(action: {
                        isEditingNickname.toggle()
                    }) {
                        Text(isEditingNickname ? "Save" : "Edit Nickname")
                            .padding(.vertical, 5)
                            .padding(.horizontal, 20)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    // Caption
                    Text("Caption:")
                        .font(.headline)
                        .padding(.top, 20)
                    
                    TextEditor(text: $caption)
                        .frame(height: 100)
                        .padding(.horizontal, 20)
                    
                    // Following and Followers
                    HStack {
                        Text("Following: \(followingCount)")
                        Spacer()
                        Text("Followers: \(followersCount)")
                    }
                    .font(.headline)
                    .padding(.top, 20)
                    
                    // Moments
                    Text("Moments")
                        .font(.title)
                        .padding(.top, 20)
                    
                    HStack {
                        Image(systemName: "camera.fill")
                            .font(.title)
                            .foregroundColor(.blue)
                            .onTapGesture {
                                // Handle camera symbol action (e.g., take a photo_
                            }
                        Spacer()
                        
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .foregroundColor(.blue)
                            .onTapGesture {
                            }
                    }
                    // Handle plus button action (e.g., open photo upload view)
                    .padding(.horizontal, 20)
                    // Post Moments
                    //                    ForEach(moments) { moment in
                    //                        MomentView(moment: moment)
                    //                    }
                }
                .padding()
            }
            .navigationBarTitle("Profile")
        }
    }
}
                struct ContentView_Previews: PreviewProvider {
                    static var previews: some View {
                        ContentView()
                    }
                }
