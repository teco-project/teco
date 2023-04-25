//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCTcbError {
    public struct OperationDenied: TCTcbErrorType {
        enum Code: String {
            case resourceFrozen = "OperationDenied.ResourceFrozen"
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

        /// 操作失败：资源被冻结。
        ///
        /// 相关资源被冻结，请前往 额度监控 控制台（https://console.cloud.tencent.com/tcb/env/safety?tabId=quota）手动解冻。
        public static var resourceFrozen: OperationDenied {
            OperationDenied(.resourceFrozen)
        }

        /// 操作被拒绝。
        public static var other: OperationDenied {
            OperationDenied(.other)
        }

        public func asTcbError() -> TCTcbError {
            let code: TCTcbError.Code
            switch self.error {
            case .resourceFrozen:
                code = .operationDenied_ResourceFrozen
            case .other:
                code = .operationDenied
            }
            return TCTcbError(code, context: self.context)
        }
    }
}
