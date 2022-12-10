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

extension TCTkeError {
    public struct ResourceInsufficient: TCErrorType {
        enum Code: String {
            case specifiedInstanceType = "ResourceInsufficient.SpecifiedInstanceType"
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
        
        public static var specifiedInstanceType: ResourceInsufficient {
            ResourceInsufficient(.specifiedInstanceType)
        }
        
        /// 资源不足。
        public static var other: ResourceInsufficient {
            ResourceInsufficient(.other)
        }
    }
}

extension TCTkeError.ResourceInsufficient: Equatable {
    public static func == (lhs: TCTkeError.ResourceInsufficient, rhs: TCTkeError.ResourceInsufficient) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTkeError.ResourceInsufficient: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTkeError.ResourceInsufficient {
    public func toTkeError() -> TCTkeError {
        guard let code = TCTkeError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTkeError(code, context: self.context)
    }
}