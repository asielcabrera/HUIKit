//
//  TailwindOptions.swift
//  HUIKit
//
//  Created by Asiel Cabrera on 4/3/25.
//

/// Configuration option including a remote or local version of Bootstrap or none at all
public enum TailwindOptions: Sendable {
    /// Use a local copy of Bootstrap. This will copy Bootstrap's CSS and JavaScript to the
    /// generated code and add references in the generated pages
    case localTailwind
    /// Use a remote copy of Bootstrap. This will add references to the Bootstrap in the
    /// generated pages and reference Bootstrap's CDN. Local copies of Bootstrap
    /// will not be copied over
    case remoteTailwind
    /// Don't add any rereferences to Bootstrap in the generated pages and don't copy any
    /// files over
    case none
}
