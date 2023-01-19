//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022-2023 the Teco project authors
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
    public struct UnsupportedOperation: TCCkafkaErrorType {
        enum Code: String {
            case batchDelInstanceLimit = "UnsupportedOperation.BatchDelInstanceLimit"
            case ossReject = "UnsupportedOperation.OssReject"
            case other = "UnsupportedOperation"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// 批量删除实例限制。
        public static var batchDelInstanceLimit: UnsupportedOperation {
            UnsupportedOperation(.batchDelInstanceLimit)
        }

        /// Oss拒绝该操作。
        public static var ossReject: UnsupportedOperation {
            UnsupportedOperation(.ossReject)
        }

        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }

        public func asCkafkaError() -> TCCkafkaError {
            let code: TCCkafkaError.Code
            switch self.error {
            case .batchDelInstanceLimit:
                code = .unsupportedOperation_BatchDelInstanceLimit
            case .ossReject:
                code = .unsupportedOperation_OssReject
            case .other:
                code = .unsupportedOperation
            }
            return TCCkafkaError(code, context: self.context)
        }
    }
}
