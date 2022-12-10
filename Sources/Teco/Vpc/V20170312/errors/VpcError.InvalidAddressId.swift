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

extension TCVpcError {
    public struct InvalidAddressId: TCErrorType {
        enum Code: String {
            case blocked = "InvalidAddressId.Blocked"
            case notFound = "InvalidAddressId.NotFound"
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
        
        /// 指定EIP处于被封堵状态。当EIP处于封堵状态的时候是不能够进行绑定操作的，需要先进行解封。
        public static var blocked: InvalidAddressId {
            InvalidAddressId(.blocked)
        }
        
        /// 指定的EIP不存在。
        public static var notFound: InvalidAddressId {
            InvalidAddressId(.notFound)
        }
    }
}

extension TCVpcError.InvalidAddressId: Equatable {
    public static func == (lhs: TCVpcError.InvalidAddressId, rhs: TCVpcError.InvalidAddressId) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCVpcError.InvalidAddressId: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCVpcError.InvalidAddressId {
    public func toVpcError() -> TCVpcError {
        guard let code = TCVpcError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCVpcError(code, context: self.context)
    }
}