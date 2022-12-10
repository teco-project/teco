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
    public struct FailedOperation: TCErrorType {
        enum Code: String {
            case illegalTextError = "FailedOperation.IllegalTextError"
            case requestTimeout = "FailedOperation.RequestTimeout"
            case rpcFail = "FailedOperation.RpcFail"
            case textEmbeddingFailed = "FailedOperation.TextEmbeddingFailed"
            case unknown = "FailedOperation.Unknown"
            case wordNotFound = "FailedOperation.WordNotFound"
            case other = "FailedOperation"
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
        
        /// 非法文本输入导致返回异常
        public static var illegalTextError: FailedOperation {
            FailedOperation(.illegalTextError)
        }
        
        /// 后端服务超时。
        public static var requestTimeout: FailedOperation {
            FailedOperation(.requestTimeout)
        }
        
        public static var rpcFail: FailedOperation {
            FailedOperation(.rpcFail)
        }
        
        /// 文本向量化失败
        public static var textEmbeddingFailed: FailedOperation {
            FailedOperation(.textEmbeddingFailed)
        }
        
        public static var unknown: FailedOperation {
            FailedOperation(.unknown)
        }
        
        /// 查找不到词语
        public static var wordNotFound: FailedOperation {
            FailedOperation(.wordNotFound)
        }
        
        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }
    }
}

extension TCNlpError.FailedOperation: Equatable {
    public static func == (lhs: TCNlpError.FailedOperation, rhs: TCNlpError.FailedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCNlpError.FailedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCNlpError.FailedOperation {
    /// - Returns: ``TCNlpError`` that holds the same error and context.
    public func toNlpError() -> TCNlpError {
        guard let code = TCNlpError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCNlpError(code, context: self.context)
    }
}

extension TCNlpError.FailedOperation {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
