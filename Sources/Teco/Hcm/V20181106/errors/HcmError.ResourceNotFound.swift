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

extension TCHcmError {
    public struct ResourceNotFound: TCErrorType {
        enum Code: String {
            case cannotFindUser = "ResourceNotFound.CannotFindUser"
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
        
        /// 无法找到用户，请确认已在控制台开通服务并使用了正确的HCMAPPID。
        public static var cannotFindUser: ResourceNotFound {
            ResourceNotFound(.cannotFindUser)
        }
    }
}

extension TCHcmError.ResourceNotFound: Equatable {
    public static func == (lhs: TCHcmError.ResourceNotFound, rhs: TCHcmError.ResourceNotFound) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCHcmError.ResourceNotFound: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCHcmError.ResourceNotFound {
    /// - Returns: ``TCHcmError`` that holds the same error and context.
    public func toHcmError() -> TCHcmError {
        guard let code = TCHcmError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCHcmError(code, context: self.context)
    }
}

extension TCHcmError.ResourceNotFound {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
