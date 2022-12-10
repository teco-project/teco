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

extension TCCkafkaError {
    public struct OperationDenied: TCErrorType {
        enum Code: String {
            case resourceTaskPaused = "OperationDenied.ResourceTaskPaused"
            case other = "OperationDenied"
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
        
        /// 任务资源暂停。
        ///
        /// 恢复控制台任务状态。
        public static var resourceTaskPaused: OperationDenied {
            OperationDenied(.resourceTaskPaused)
        }
        
        /// 操作被拒绝。
        public static var other: OperationDenied {
            OperationDenied(.other)
        }
    }
}

extension TCCkafkaError.OperationDenied: Equatable {
    public static func == (lhs: TCCkafkaError.OperationDenied, rhs: TCCkafkaError.OperationDenied) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCkafkaError.OperationDenied: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCkafkaError.OperationDenied {
    /// - Returns: ``TCCkafkaError`` that holds the same error and context.
    public func toCkafkaError() -> TCCkafkaError {
        guard let code = TCCkafkaError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCkafkaError(code, context: self.context)
    }
}

extension TCCkafkaError.OperationDenied {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
