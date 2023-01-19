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

extension TCTkeError {
    public struct OperationDenied: TCTkeErrorType {
        enum Code: String {
            case clusterInDeletionProtection = "OperationDenied.ClusterInDeletionProtection"
            case other = "OperationDenied"
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

        /// 集群处于删除保护中，禁止删除。
        public static var clusterInDeletionProtection: OperationDenied {
            OperationDenied(.clusterInDeletionProtection)
        }

        /// 操作被拒绝。
        public static var other: OperationDenied {
            OperationDenied(.other)
        }

        public func asTkeError() -> TCTkeError {
            let code: TCTkeError.Code
            switch self.error {
            case .clusterInDeletionProtection:
                code = .operationDenied_ClusterInDeletionProtection
            case .other:
                code = .operationDenied
            }
            return TCTkeError(code, context: self.context)
        }
    }
}
