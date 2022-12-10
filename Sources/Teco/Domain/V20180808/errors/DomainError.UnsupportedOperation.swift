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

extension TCDomainError {
    public struct UnsupportedOperation: TCErrorType {
        enum Code: String {
            case accountRealName = "UnsupportedOperation.AccountRealName"
            case domainNotVerified = "UnsupportedOperation.DomainNotVerified"
            case modifyDomainInfoUnsupported = "UnsupportedOperation.ModifyDomainInfoUnsupported"
            case modifyDomainUnsupported = "UnsupportedOperation.ModifyDomainUnsupported"
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
        
        /// 账户实名认证未通过。
        public static var accountRealName: UnsupportedOperation {
            UnsupportedOperation(.accountRealName)
        }
        
        /// 当前域名未完成实名认证，无法完成该操作。
        public static var domainNotVerified: UnsupportedOperation {
            UnsupportedOperation(.domainNotVerified)
        }
        
        /// 当前域名状态不支持修改。
        public static var modifyDomainInfoUnsupported: UnsupportedOperation {
            UnsupportedOperation(.modifyDomainInfoUnsupported)
        }
        
        /// 当前域名状态不支持修改。
        public static var modifyDomainUnsupported: UnsupportedOperation {
            UnsupportedOperation(.modifyDomainUnsupported)
        }
    }
}

extension TCDomainError.UnsupportedOperation: Equatable {
    public static func == (lhs: TCDomainError.UnsupportedOperation, rhs: TCDomainError.UnsupportedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCDomainError.UnsupportedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCDomainError.UnsupportedOperation {
    /// - Returns: ``TCDomainError`` that holds the same error and context.
    public func toDomainError() -> TCDomainError {
        guard let code = TCDomainError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCDomainError(code, context: self.context)
    }
}

extension TCDomainError.UnsupportedOperation {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
