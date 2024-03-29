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

extension TCVpcError {
    public struct AddressQuotaLimitExceeded: TCVpcErrorType {
        enum Code: String {
            case dailyAllocate = "AddressQuotaLimitExceeded.DailyAllocate"
            case other = "AddressQuotaLimitExceeded"
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

        /// 申购次数不足，每个腾讯云账户每个地域每天申购次数为配额数*2 次。
        public static var dailyAllocate: AddressQuotaLimitExceeded {
            AddressQuotaLimitExceeded(.dailyAllocate)
        }

        /// 账户配额不足，每个腾讯云账户每个地域下最多可创建 20 个 EIP。
        public static var other: AddressQuotaLimitExceeded {
            AddressQuotaLimitExceeded(.other)
        }

        public func asVpcError() -> TCVpcError {
            let code: TCVpcError.Code
            switch self.error {
            case .dailyAllocate:
                code = .addressQuotaLimitExceeded_DailyAllocate
            case .other:
                code = .addressQuotaLimitExceeded
            }
            return TCVpcError(code, context: self.context)
        }
    }
}
