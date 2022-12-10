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

extension TCLighthouseError {
    public struct ResourceInUse: TCErrorType {
        enum Code: String {
            case keyPairInUse = "ResourceInUse.KeyPairInUse"
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
        
        /// 密钥对正在使用中。
        public static var keyPairInUse: ResourceInUse {
            ResourceInUse(.keyPairInUse)
        }
    }
}

extension TCLighthouseError.ResourceInUse: Equatable {
    public static func == (lhs: TCLighthouseError.ResourceInUse, rhs: TCLighthouseError.ResourceInUse) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCLighthouseError.ResourceInUse: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCLighthouseError.ResourceInUse {
    public func toLighthouseError() -> TCLighthouseError {
        guard let code = TCLighthouseError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCLighthouseError(code, context: self.context)
    }
}