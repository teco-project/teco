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

extension TCCamError {
    public struct InvalidParameterValue: TCErrorType {
        enum Code: String {
            case identityKeyError = "InvalidParameterValue.IdentityKeyError"
            case identityUrlError = "InvalidParameterValue.IdentityUrlError"
            case metadataError = "InvalidParameterValue.MetadataError"
            case nameError = "InvalidParameterValue.NameError"
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
        
        /// OIDC签名公钥错误。
        public static var identityKeyError: InvalidParameterValue {
            InvalidParameterValue(.identityKeyError)
        }
        
        /// 身份提供商URL错误。
        public static var identityUrlError: InvalidParameterValue {
            InvalidParameterValue(.identityUrlError)
        }
        
        /// 身份提供商元数据文档错误。
        public static var metadataError: InvalidParameterValue {
            InvalidParameterValue(.metadataError)
        }
        
        /// 身份提供商名称错误。
        public static var nameError: InvalidParameterValue {
            InvalidParameterValue(.nameError)
        }
    }
}

extension TCCamError.InvalidParameterValue: Equatable {
    public static func == (lhs: TCCamError.InvalidParameterValue, rhs: TCCamError.InvalidParameterValue) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCamError.InvalidParameterValue: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCamError.InvalidParameterValue {
    /// - Returns: ``TCCamError`` that holds the same error and context.
    public func toCamError() -> TCCamError {
        guard let code = TCCamError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCamError(code, context: self.context)
    }
}

extension TCCamError.InvalidParameterValue {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
