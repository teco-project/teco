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

import TecoCore

extension TCCdnError {
    public struct OperationDenied: TCCdnErrorType {
        enum Code: String {
            case shareCacheAreaDnsNotMatch = "OperationDenied.ShareCacheAreaDnsNotMatch"
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

        /// 请重新选择或联系腾讯云技术支持
        public static var shareCacheAreaDnsNotMatch: OperationDenied {
            OperationDenied(.shareCacheAreaDnsNotMatch)
        }

        /// 操作被拒绝。
        public static var other: OperationDenied {
            OperationDenied(.other)
        }

        public func asCdnError() -> TCCdnError {
            let code: TCCdnError.Code
            switch self.error {
            case .shareCacheAreaDnsNotMatch:
                code = .operationDenied_ShareCacheAreaDnsNotMatch
            case .other:
                code = .operationDenied
            }
            return TCCdnError(code, context: self.context)
        }
    }
}