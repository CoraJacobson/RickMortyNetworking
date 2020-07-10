//
//  CharacterCell.swift
//  RickMortyNetworking
//
//  Created by Shawn Gee on 7/9/20.
//  Copyright © 2020 Swift Student. All rights reserved.
//

import UIKit

class CharacterCell: UICollectionViewCell {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var speciesLabel: UILabel!
    
    // MARK: - Public Properties
    
    var character: Character? { didSet { updateViews() }}
    
    func updateViews() {
        guard let character = character else { return }
        
        self.imageView.image = UIImage(data: try! Data(contentsOf: character.image))
        self.nameLabel.text = character.name
        self.speciesLabel.text = character.species
    }
}
