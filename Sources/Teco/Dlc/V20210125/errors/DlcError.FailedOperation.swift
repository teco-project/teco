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

extension TCDlcError {
    public struct FailedOperation: TCDlcErrorType {
        enum Code: String {
            case abnormalOrderStatus = "FailedOperation.AbnormalOrderStatus"
            case anotherCreateProcessRunning = "FailedOperation.AnotherCreateProcessRunning"
            case anotherProcessRunning = "FailedOperation.AnotherProcessRunning"
            case anotherRequestProcessing = "FailedOperation.AnotherRequestProcessing"
            case balanceNotEnough = "FailedOperation.BalanceNotEnough"
            case billingSystemError = "FailedOperation.BillingSystemError"
            case bindTooManyTags = "FailedOperation.BindTooManyTags"
            case createDataEngineFailed = "FailedOperation.CreateDataEngineFailed"
            case deliverGoodsFailed = "FailedOperation.DeliverGoodsFailed"
            case duplicateTagKey = "FailedOperation.DuplicateTagKey"
            case feeDeductionFailed = "FailedOperation.FeeDeductionFailed"
            case getPolicyFailed = "FailedOperation.GetPolicyFailed"
            case getProductInformationFailed = "FailedOperation.GetProductInformationFailed"
            case getUserInfoFailed = "FailedOperation.GetUserInfoFailed"
            case getWorkGroupInfoFailed = "FailedOperation.GetWorkGroupInfoFailed"
            case grantPolicyFailed = "FailedOperation.GrantPolicyFailed"
            case httpClientDoRequestFailed = "FailedOperation.HttpClientDoRequestFailed"
            case illegalResource = "FailedOperation.IllegalResource"
            case illegalTagKey = "FailedOperation.IllegalTagKey"
            case illegalTagValue = "FailedOperation.IllegalTagValue"
            case inquirePriceFailed = "FailedOperation.InquirePriceFailed"
            case modifyInstanceFailed = "FailedOperation.ModifyInstanceFailed"
            case noPermission = "FailedOperation.NoPermission"
            case noRealNameAuthentication = "FailedOperation.NoRealNameAuthentication"
            case numberExceedLimit = "FailedOperation.NumberExceedLimit"
            case parameterValidationFailed = "FailedOperation.ParameterValidationFailed"
            case refundDepositFailed = "FailedOperation.RefundDepositFailed"
            case revokePolicyFailed = "FailedOperation.RevokePolicyFailed"
            case tagAlreadyAttached = "FailedOperation.TagAlreadyAttached"
            case tagKeyTooLong = "FailedOperation.TagKeyTooLong"
            case tagNotExist = "FailedOperation.TagNotExist"
            case tagValueTooLong = "FailedOperation.TagValueTooLong"
            case tooManyResources = "FailedOperation.TooManyResources"
            case tooManyTags = "FailedOperation.TooManyTags"
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

        /// 订单状态异常。
        ///
        /// 计费侧订单状态异常，请重试或联系我们。
        public static var abnormalOrderStatus: FailedOperation {
            FailedOperation(.abnormalOrderStatus)
        }

        /// 另一个数据源正在创建中。
        public static var anotherCreateProcessRunning: FailedOperation {
            FailedOperation(.anotherCreateProcessRunning)
        }

        /// 另一个操作正在处理中，请稍后再试。
        public static var anotherProcessRunning: FailedOperation {
            FailedOperation(.anotherProcessRunning)
        }

        /// 另一个请求正在处理中，请稍后再试。
        public static var anotherRequestProcessing: FailedOperation {
            FailedOperation(.anotherRequestProcessing)
        }

        /// 账户余额不足。
        ///
        /// 请充值后再重试。
        public static var balanceNotEnough: FailedOperation {
            FailedOperation(.balanceNotEnough)
        }

        /// 计费系统异常。
        ///
        /// 请联系我们解决。
        public static var billingSystemError: FailedOperation {
            FailedOperation(.billingSystemError)
        }

        /// 绑定的标签数量超出限制。
        ///
        /// 减少绑定的标签数量
        public static var bindTooManyTags: FailedOperation {
            FailedOperation(.bindTooManyTags)
        }

        /// 创建引擎失败。
        ///
        /// 请重试或联系我们。
        public static var createDataEngineFailed: FailedOperation {
            FailedOperation(.createDataEngineFailed)
        }

        /// 发货失败。
        ///
        /// 请联系我们解决。
        public static var deliverGoodsFailed: FailedOperation {
            FailedOperation(.deliverGoodsFailed)
        }

        /// 重复的标签键。
        ///
        /// 检查要绑定的标签键
        public static var duplicateTagKey: FailedOperation {
            FailedOperation(.duplicateTagKey)
        }

        /// 扣费失败。
        ///
        /// 计费侧扣费失败，请重试或联系我们。
        public static var feeDeductionFailed: FailedOperation {
            FailedOperation(.feeDeductionFailed)
        }

        /// 获取鉴权策略失败。
        ///
        /// 请重试或联系我们
        public static var getPolicyFailed: FailedOperation {
            FailedOperation(.getPolicyFailed)
        }

        /// 获取商品信息失败。
        ///
        /// 请联系助手解决。
        public static var getProductInformationFailed: FailedOperation {
            FailedOperation(.getProductInformationFailed)
        }

        /// 获取用户信息失败。
        ///
        /// 请重试，如重试也失败，请联系我们。
        public static var getUserInfoFailed: FailedOperation {
            FailedOperation(.getUserInfoFailed)
        }

        /// 获取工作组信息失败。
        ///
        /// 请重试或联系我们。
        public static var getWorkGroupInfoFailed: FailedOperation {
            FailedOperation(.getWorkGroupInfoFailed)
        }

        /// 授权失败。
        ///
        /// 请重试或联系我们。
        public static var grantPolicyFailed: FailedOperation {
            FailedOperation(.grantPolicyFailed)
        }

        /// HTTP客户端请求失败。
        public static var httpClientDoRequestFailed: FailedOperation {
            FailedOperation(.httpClientDoRequestFailed)
        }

        /// 资源不符合规定。
        ///
        /// 检查资源是否越权。
        public static var illegalResource: FailedOperation {
            FailedOperation(.illegalResource)
        }

        /// 标签键含有非法字符。
        ///
        /// 检查要绑定的标签键
        public static var illegalTagKey: FailedOperation {
            FailedOperation(.illegalTagKey)
        }

        /// 标签值含有非法字符。
        ///
        /// 检查要绑定的标签值
        public static var illegalTagValue: FailedOperation {
            FailedOperation(.illegalTagValue)
        }

        /// 询价失败。
        ///
        /// 计费询价失败，请重试或联系我们。
        public static var inquirePriceFailed: FailedOperation {
            FailedOperation(.inquirePriceFailed)
        }

        /// 实例变配失败。
        ///
        /// 请联系我们解决
        public static var modifyInstanceFailed: FailedOperation {
            FailedOperation(.modifyInstanceFailed)
        }

        /// 没有操作权限。
        ///
        /// 授权之后重试。
        public static var noPermission: FailedOperation {
            FailedOperation(.noPermission)
        }

        /// 账号未进行实名认证。
        ///
        /// 请进行实名认证。
        public static var noRealNameAuthentication: FailedOperation {
            FailedOperation(.noRealNameAuthentication)
        }

        /// 采购数量超过限制。
        ///
        /// 采购数量超过限制，请降低购买数量。
        public static var numberExceedLimit: FailedOperation {
            FailedOperation(.numberExceedLimit)
        }

        /// 参数校验失败。
        ///
        /// 参数校验失败，请重试或联系我们。
        public static var parameterValidationFailed: FailedOperation {
            FailedOperation(.parameterValidationFailed)
        }

        /// 退押金失败。
        ///
        /// 请联系我们。
        public static var refundDepositFailed: FailedOperation {
            FailedOperation(.refundDepositFailed)
        }

        /// 取消授权失败。
        ///
        /// 请重试或联系我们。
        public static var revokePolicyFailed: FailedOperation {
            FailedOperation(.revokePolicyFailed)
        }

        /// 资源已经绑定了同名标签键。
        ///
        /// 确认需要绑定的标签键。
        public static var tagAlreadyAttached: FailedOperation {
            FailedOperation(.tagAlreadyAttached)
        }

        /// 标签键长度超过限制。
        ///
        /// 检查要绑定的标签键
        public static var tagKeyTooLong: FailedOperation {
            FailedOperation(.tagKeyTooLong)
        }

        /// 标签不存在。
        ///
        /// 添加标签之后再绑定
        public static var tagNotExist: FailedOperation {
            FailedOperation(.tagNotExist)
        }

        /// 标签值长度超过限制。
        ///
        /// 检查要绑定的标签值
        public static var tagValueTooLong: FailedOperation {
            FailedOperation(.tagValueTooLong)
        }

        /// 资源数量超出限制。
        ///
        /// 减少资源数量
        public static var tooManyResources: FailedOperation {
            FailedOperation(.tooManyResources)
        }

        /// 标签数量超出限制。
        ///
        /// 减少绑定的标签数
        public static var tooManyTags: FailedOperation {
            FailedOperation(.tooManyTags)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asDlcError() -> TCDlcError {
            let code: TCDlcError.Code
            switch self.error {
            case .abnormalOrderStatus:
                code = .failedOperation_AbnormalOrderStatus
            case .anotherCreateProcessRunning:
                code = .failedOperation_AnotherCreateProcessRunning
            case .anotherProcessRunning:
                code = .failedOperation_AnotherProcessRunning
            case .anotherRequestProcessing:
                code = .failedOperation_AnotherRequestProcessing
            case .balanceNotEnough:
                code = .failedOperation_BalanceNotEnough
            case .billingSystemError:
                code = .failedOperation_BillingSystemError
            case .bindTooManyTags:
                code = .failedOperation_BindTooManyTags
            case .createDataEngineFailed:
                code = .failedOperation_CreateDataEngineFailed
            case .deliverGoodsFailed:
                code = .failedOperation_DeliverGoodsFailed
            case .duplicateTagKey:
                code = .failedOperation_DuplicateTagKey
            case .feeDeductionFailed:
                code = .failedOperation_FeeDeductionFailed
            case .getPolicyFailed:
                code = .failedOperation_GetPolicyFailed
            case .getProductInformationFailed:
                code = .failedOperation_GetProductInformationFailed
            case .getUserInfoFailed:
                code = .failedOperation_GetUserInfoFailed
            case .getWorkGroupInfoFailed:
                code = .failedOperation_GetWorkGroupInfoFailed
            case .grantPolicyFailed:
                code = .failedOperation_GrantPolicyFailed
            case .httpClientDoRequestFailed:
                code = .failedOperation_HttpClientDoRequestFailed
            case .illegalResource:
                code = .failedOperation_IllegalResource
            case .illegalTagKey:
                code = .failedOperation_IllegalTagKey
            case .illegalTagValue:
                code = .failedOperation_IllegalTagValue
            case .inquirePriceFailed:
                code = .failedOperation_InquirePriceFailed
            case .modifyInstanceFailed:
                code = .failedOperation_ModifyInstanceFailed
            case .noPermission:
                code = .failedOperation_NoPermission
            case .noRealNameAuthentication:
                code = .failedOperation_NoRealNameAuthentication
            case .numberExceedLimit:
                code = .failedOperation_NumberExceedLimit
            case .parameterValidationFailed:
                code = .failedOperation_ParameterValidationFailed
            case .refundDepositFailed:
                code = .failedOperation_RefundDepositFailed
            case .revokePolicyFailed:
                code = .failedOperation_RevokePolicyFailed
            case .tagAlreadyAttached:
                code = .failedOperation_TagAlreadyAttached
            case .tagKeyTooLong:
                code = .failedOperation_TagKeyTooLong
            case .tagNotExist:
                code = .failedOperation_TagNotExist
            case .tagValueTooLong:
                code = .failedOperation_TagValueTooLong
            case .tooManyResources:
                code = .failedOperation_TooManyResources
            case .tooManyTags:
                code = .failedOperation_TooManyTags
            case .other:
                code = .failedOperation
            }
            return TCDlcError(code, context: self.context)
        }
    }
}
