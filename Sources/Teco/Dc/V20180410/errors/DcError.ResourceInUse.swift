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

extension TCDcError {
    public struct ResourceInUse: TCErrorType {
        enum Code: String {
            case dcVpcIsExist = "ResourceInUse.DcVpcIsExist"
            case other = "ResourceInUse"
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
        
        /// 物理专线的vpc已经存在。
        public static var dcVpcIsExist: ResourceInUse {
            ResourceInUse(.dcVpcIsExist)
        }
        
        /// 资源被占用。
        public static var other: ResourceInUse {
            ResourceInUse(.other)
        }
    }
}

extension TCDcError.ResourceInUse: Equatable {
    public static func == (lhs: TCDcError.ResourceInUse, rhs: TCDcError.ResourceInUse) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCDcError.ResourceInUse: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCDcError.ResourceInUse {
    public func toDcError() -> TCDcError {
        guard let code = TCDcError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCDcError(code, context: self.context)
    }
}