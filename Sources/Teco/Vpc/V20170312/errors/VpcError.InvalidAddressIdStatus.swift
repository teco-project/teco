//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCVpcError {
    public struct InvalidAddressIdStatus: TCErrorType {
        enum Code: String {
            case notPermit = "InvalidAddressIdStatus.NotPermit"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        ///
        /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
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
        
        /// 指定 EIP 当前状态不能进行绑定操作。只有 EIP 的状态是 UNBIND 时才能进行绑定操作。
        public static var notPermit: InvalidAddressIdStatus {
            InvalidAddressIdStatus(.notPermit)
        }
    }
}

extension TCVpcError.InvalidAddressIdStatus: Equatable {
    public static func == (lhs: TCVpcError.InvalidAddressIdStatus, rhs: TCVpcError.InvalidAddressIdStatus) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCVpcError.InvalidAddressIdStatus: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCVpcError.InvalidAddressIdStatus {
    /// - Returns: ``TCVpcError`` that holds the same error and context.
    public func toVpcError() -> TCVpcError {
        guard let code = TCVpcError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCVpcError(code, context: self.context)
    }
}

extension TCVpcError.InvalidAddressIdStatus {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
