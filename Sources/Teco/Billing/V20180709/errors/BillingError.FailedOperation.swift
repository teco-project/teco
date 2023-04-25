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

extension TCBillingError {
    public struct FailedOperation: TCBillingErrorType {
        enum Code: String {
            case agentPayDealCannotDown = "FailedOperation.AgentPayDealCannotDown"
            case balanceInsufficient = "FailedOperation.BalanceInsufficient"
            case invalidAppId = "FailedOperation.InvalidAppId"
            case invalidDeal = "FailedOperation.InvalidDeal"
            case invalidVoucher = "FailedOperation.InvalidVoucher"
            case needPayTogeter = "FailedOperation.NeedPayTogeter"
            case needPayTogether = "FailedOperation.NeedPayTogether"
            case payPriceError = "FailedOperation.PayPriceError"
            case paySuccDeliverFailed = "FailedOperation.PaySuccDeliverFailed"
            case queryCountFailed = "FailedOperation.QueryCountFailed"
            case summaryDataNotReady = "FailedOperation.SummaryDataNotReady"
            case tagKeyNotExist = "FailedOperation.TagKeyNotExist"
            case other = "FailedOperation"
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

        /// 代理支付设备不能降配。
        public static var agentPayDealCannotDown: FailedOperation {
            FailedOperation(.agentPayDealCannotDown)
        }

        /// 账户余额不足。
        public static var balanceInsufficient: FailedOperation {
            FailedOperation(.balanceInsufficient)
        }

        /// appId不符。
        public static var invalidAppId: FailedOperation {
            FailedOperation(.invalidAppId)
        }

        /// 订单状态错误，只有未支付订单才能支付。
        public static var invalidDeal: FailedOperation {
            FailedOperation(.invalidDeal)
        }

        /// 代金券不可用。
        public static var invalidVoucher: FailedOperation {
            FailedOperation(.invalidVoucher)
        }

        /// 一起购买的订单必须同时支付。
        public static var needPayTogeter: FailedOperation {
            FailedOperation(.needPayTogeter)
        }

        /// 套餐订单需一起购买。
        public static var needPayTogether: FailedOperation {
            FailedOperation(.needPayTogether)
        }

        /// 支付失败，请联系腾讯云工作人员处理。
        public static var payPriceError: FailedOperation {
            FailedOperation(.payPriceError)
        }

        /// 支付成功但发货失败，请联系腾讯云工作人员处理。
        public static var paySuccDeliverFailed: FailedOperation {
            FailedOperation(.paySuccDeliverFailed)
        }

        /// 获取数据条数失败。
        ///
        /// 尝试将NeedRecordNum设置为默认值或0。
        public static var queryCountFailed: FailedOperation {
            FailedOperation(.queryCountFailed)
        }

        /// 汇总数据正在构建中，请稍后再试。
        public static var summaryDataNotReady: FailedOperation {
            FailedOperation(.summaryDataNotReady)
        }

        /// 不存在该分账标签键。
        public static var tagKeyNotExist: FailedOperation {
            FailedOperation(.tagKeyNotExist)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asBillingError() -> TCBillingError {
            let code: TCBillingError.Code
            switch self.error {
            case .agentPayDealCannotDown:
                code = .failedOperation_AgentPayDealCannotDown
            case .balanceInsufficient:
                code = .failedOperation_BalanceInsufficient
            case .invalidAppId:
                code = .failedOperation_InvalidAppId
            case .invalidDeal:
                code = .failedOperation_InvalidDeal
            case .invalidVoucher:
                code = .failedOperation_InvalidVoucher
            case .needPayTogeter:
                code = .failedOperation_NeedPayTogeter
            case .needPayTogether:
                code = .failedOperation_NeedPayTogether
            case .payPriceError:
                code = .failedOperation_PayPriceError
            case .paySuccDeliverFailed:
                code = .failedOperation_PaySuccDeliverFailed
            case .queryCountFailed:
                code = .failedOperation_QueryCountFailed
            case .summaryDataNotReady:
                code = .failedOperation_SummaryDataNotReady
            case .tagKeyNotExist:
                code = .failedOperation_TagKeyNotExist
            case .other:
                code = .failedOperation
            }
            return TCBillingError(code, context: self.context)
        }
    }
}
