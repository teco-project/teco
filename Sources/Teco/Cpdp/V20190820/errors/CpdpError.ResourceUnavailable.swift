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

extension TCCpdpError {
    public struct ResourceUnavailable: TCCpdpErrorType {
        enum Code: String {
            case midasBalance = "ResourceUnavailable.MidasBalance"
            case midasDay = "ResourceUnavailable.MidasDay"
            case midasFrozenAmount = "ResourceUnavailable.MidasFrozenAmount"
            case midasMerchantBalance = "ResourceUnavailable.MidasMerchantBalance"
            case midasOrder = "ResourceUnavailable.MidasOrder"
            case midasUserBalance = "ResourceUnavailable.MidasUserBalance"
            case midasWallet = "ResourceUnavailable.MidasWallet"
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

        /// 聚鑫可用余额不足。
        public static var midasBalance: ResourceUnavailable {
            ResourceUnavailable(.midasBalance)
        }

        /// 聚鑫单日限额。
        ///
        /// 请联系我们
        public static var midasDay: ResourceUnavailable {
            ResourceUnavailable(.midasDay)
        }

        /// 聚鑫订单剩余冻结金额不足，因此会完结失败。
        ///
        /// 请联系我们
        public static var midasFrozenAmount: ResourceUnavailable {
            ResourceUnavailable(.midasFrozenAmount)
        }

        /// 聚鑫商户可用余额不足。
        ///
        /// 请联系我们
        public static var midasMerchantBalance: ResourceUnavailable {
            ResourceUnavailable(.midasMerchantBalance)
        }

        /// 聚鑫单笔限额。
        ///
        /// 请联系我们
        public static var midasOrder: ResourceUnavailable {
            ResourceUnavailable(.midasOrder)
        }

        /// 聚鑫用户可用余额不足。
        ///
        /// 请联系我们
        public static var midasUserBalance: ResourceUnavailable {
            ResourceUnavailable(.midasUserBalance)
        }

        /// 聚鑫钱包支付超限。
        ///
        /// 请联系我们
        public static var midasWallet: ResourceUnavailable {
            ResourceUnavailable(.midasWallet)
        }

        public func asCpdpError() -> TCCpdpError {
            let code: TCCpdpError.Code
            switch self.error {
            case .midasBalance:
                code = .resourceUnavailable_MidasBalance
            case .midasDay:
                code = .resourceUnavailable_MidasDay
            case .midasFrozenAmount:
                code = .resourceUnavailable_MidasFrozenAmount
            case .midasMerchantBalance:
                code = .resourceUnavailable_MidasMerchantBalance
            case .midasOrder:
                code = .resourceUnavailable_MidasOrder
            case .midasUserBalance:
                code = .resourceUnavailable_MidasUserBalance
            case .midasWallet:
                code = .resourceUnavailable_MidasWallet
            }
            return TCCpdpError(code, context: self.context)
        }
    }
}
