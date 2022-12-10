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

extension TCNlpError {
    public struct ResourceUnavailable: TCErrorType {
        enum Code: String {
            case fileUnavailable = "ResourceUnavailable.FileUnavailable"
            case serviceNotOpenedError = "ResourceUnavailable.ServiceNotOpenedError"
            case other = "ResourceUnavailable"
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
        
        /// 文件资源不可用
        public static var fileUnavailable: ResourceUnavailable {
            ResourceUnavailable(.fileUnavailable)
        }
        
        /// 您的账号尚未开通NLP服务，请登录腾讯云NLP控制台进行服务开通后再使用
        public static var serviceNotOpenedError: ResourceUnavailable {
            ResourceUnavailable(.serviceNotOpenedError)
        }
        
        /// 资源不可用。
        public static var other: ResourceUnavailable {
            ResourceUnavailable(.other)
        }
    }
}

extension TCNlpError.ResourceUnavailable: Equatable {
    public static func == (lhs: TCNlpError.ResourceUnavailable, rhs: TCNlpError.ResourceUnavailable) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCNlpError.ResourceUnavailable: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCNlpError.ResourceUnavailable {
    /// - Returns: ``TCNlpError`` that holds the same error and context.
    public func toNlpError() -> TCNlpError {
        guard let code = TCNlpError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCNlpError(code, context: self.context)
    }
}

extension TCNlpError.ResourceUnavailable {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
