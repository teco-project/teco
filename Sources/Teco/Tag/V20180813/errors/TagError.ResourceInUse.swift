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

extension TCTagError {
    public struct ResourceInUse: TCErrorType {
        enum Code: String {
            case tagDuplicate = "ResourceInUse.TagDuplicate"
            case tagKeyAttached = "ResourceInUse.TagKeyAttached"
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
        
        /// 标签已存在。
        public static var tagDuplicate: ResourceInUse {
            ResourceInUse(.tagDuplicate)
        }
        
        /// 对应的标签键和资源已关联。
        public static var tagKeyAttached: ResourceInUse {
            ResourceInUse(.tagKeyAttached)
        }
    }
}

extension TCTagError.ResourceInUse: Equatable {
    public static func == (lhs: TCTagError.ResourceInUse, rhs: TCTagError.ResourceInUse) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTagError.ResourceInUse: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTagError.ResourceInUse {
    public func toTagError() -> TCTagError {
        guard let code = TCTagError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTagError(code, context: self.context)
    }
}