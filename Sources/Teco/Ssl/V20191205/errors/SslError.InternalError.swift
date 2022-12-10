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

extension TCSslError {
    public struct InternalError: TCErrorType {
        enum Code: String {
            case backendResponseEmpty = "InternalError.BackendResponseEmpty"
            case backendResponseError = "InternalError.BackendResponseError"
            case other = "InternalError"
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
        
        public static var backendResponseEmpty: InternalError {
            InternalError(.backendResponseEmpty)
        }
        
        /// 后端服务响应错误。
        public static var backendResponseError: InternalError {
            InternalError(.backendResponseError)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
    }
}

extension TCSslError.InternalError: Equatable {
    public static func == (lhs: TCSslError.InternalError, rhs: TCSslError.InternalError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCSslError.InternalError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCSslError.InternalError {
    /// - Returns: ``TCSslError`` that holds the same error and context.
    public func toSslError() -> TCSslError {
        guard let code = TCSslError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCSslError(code, context: self.context)
    }
}

extension TCSslError.InternalError {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
