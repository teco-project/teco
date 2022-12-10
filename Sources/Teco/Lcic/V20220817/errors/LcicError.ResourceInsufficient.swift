//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCLcicError {
    public struct ResourceInsufficient: TCErrorType {
        enum Code: String {
            case record = "ResourceInsufficient.Record"
            case room = "ResourceInsufficient.Room"
            case other = "ResourceInsufficient"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        public static var record: ResourceInsufficient {
            ResourceInsufficient(.record)
        }
        
        public static var room: ResourceInsufficient {
            ResourceInsufficient(.room)
        }
        
        public static var other: ResourceInsufficient {
            ResourceInsufficient(.other)
        }
    }
}

extension TCLcicError.ResourceInsufficient: Equatable {
    public static func == (lhs: TCLcicError.ResourceInsufficient, rhs: TCLcicError.ResourceInsufficient) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCLcicError.ResourceInsufficient: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCLcicError.ResourceInsufficient {
    public func toLcicError() -> TCLcicError {
        guard let code = TCLcicError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCLcicError(code, context: self.context)
    }
}