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

extension TCCbsError {
    public struct ResourceInsufficient: TCCbsErrorType {
        enum Code: String {
            case overQuota = "ResourceInsufficient.OverQuota"
            case overRefundQuota = "ResourceInsufficient.OverRefundQuota"
            case other = "ResourceInsufficient"
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

        /// 配额不足。
        public static var overQuota: ResourceInsufficient {
            ResourceInsufficient(.overQuota)
        }

        /// 云盘退还数量已达上限，不能再退还。
        public static var overRefundQuota: ResourceInsufficient {
            ResourceInsufficient(.overRefundQuota)
        }

        /// 资源不足。
        public static var other: ResourceInsufficient {
            ResourceInsufficient(.other)
        }

        public func asCbsError() -> TCCbsError {
            let code: TCCbsError.Code
            switch self.error {
            case .overQuota:
                code = .resourceInsufficient_OverQuota
            case .overRefundQuota:
                code = .resourceInsufficient_OverRefundQuota
            case .other:
                code = .resourceInsufficient
            }
            return TCCbsError(code, context: self.context)
        }
    }
}
