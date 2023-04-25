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
    public struct FailedOperation: TCCpdpErrorType {
        enum Code: String {
            case abnormalMerchantState = "FailedOperation.AbnormalMerchantState"
            case abnormalOrderState = "FailedOperation.AbnormalOrderState"
            case acctNotBind = "FailedOperation.AcctNotBind"
            case acctNotExist = "FailedOperation.AcctNotExist"
            case action = "FailedOperation.Action"
            case actionInvalid = "FailedOperation.ActionInvalid"
            case addMerchantFailed = "FailedOperation.AddMerchantFailed"
            case alreadyExists = "FailedOperation.AlreadyExists"
            case appDeny = "FailedOperation.AppDeny"
            case appidMchidNotMatch = "FailedOperation.AppidMchidNotMatch"
            case backCallError = "FailedOperation.BackCallError"
            case backendError = "FailedOperation.BackendError"
            case balanceInsufficient = "FailedOperation.BalanceInsufficient"
            case bankFailed = "FailedOperation.BankFailed"
            case banlanceNotEnoughError = "FailedOperation.BanlanceNotEnoughError"
            case callChannelGatewayError = "FailedOperation.CallChannelGatewayError"
            case channelDeny = "FailedOperation.ChannelDeny"
            case channelError = "FailedOperation.ChannelError"
            case channelRefundFailed = "FailedOperation.ChannelRefundFailed"
            case channelRefundFrequencyLimited = "FailedOperation.ChannelRefundFrequencyLimited"
            case closeContractDbFailed = "FailedOperation.CloseContractDbFailed"
            case closeContractModeInvalid = "FailedOperation.CloseContractModeInvalid"
            case configError = "FailedOperation.ConfigError"
            case contractStatusError = "FailedOperation.ContractStatusError"
            case createAgent = "FailedOperation.CreateAgent"
            case createOrderError = "FailedOperation.CreateOrderError"
            case createOrderUnknown = "FailedOperation.CreateOrderUnknown"
            case dbClientConnectFailed = "FailedOperation.DbClientConnectFailed"
            case dbClientInserttFailed = "FailedOperation.DbClientInserttFailed"
            case dbClientQueryFailed = "FailedOperation.DbClientQueryFailed"
            case dbClientUpdateFailed = "FailedOperation.DbClientUpdateFailed"
            case dbConfigError = "FailedOperation.DBConfigError"
            case downloadBillError = "FailedOperation.DownloadBillError"
            case externalContractIndexNotFound = "FailedOperation.ExternalContractIndexNotFound"
            case externalContractNotFound = "FailedOperation.ExternalContractNotFound"
            case externalContractStatusInvalid = "FailedOperation.ExternalContractStatusInvalid"
            case externalMerchantContractInfoConfigNoFound = "FailedOperation.ExternalMerchantContractInfoConfigNoFound"
            case externalMerchantIndexConfigNoFound = "FailedOperation.ExternalMerchantIndexConfigNoFound"
            case externalMerchantInfoConfigNoFound = "FailedOperation.ExternalMerchantInfoConfigNoFound"
            case fileNotExist = "FailedOperation.FileNotExist"
            case frequencyLimited = "FailedOperation.FrequencyLimited"
            case getLiveDailySummary = "FailedOperation.GetLiveDailySummary"
            case httpDoRequestError = "FailedOperation.HttpDoRequestError"
            case internalServiceTimeout = "FailedOperation.InternalServiceTimeout"
            case invalidParameter = "FailedOperation.InvalidParameter"
            case invalidRefundAmt = "FailedOperation.InvalidRefundAmt"
            case invalidRequest = "FailedOperation.InvalidRequest"
            case invoiceExist = "FailedOperation.InvoiceExist"
            case isEmpty = "FailedOperation.IsEmpty"
            case marshalError = "FailedOperation.MarshalError"
            case merchantBalanceNotEnough = "FailedOperation.MerchantBalanceNotEnough"
            case merchantCheckFailed = "FailedOperation.MerchantCheckFailed"
            case merchantCreateFailed = "FailedOperation.MerchantCreateFailed"
            case merchantExist = "FailedOperation.MerchantExist"
            case merchantNotExist = "FailedOperation.MerchantNotExist"
            case merchantNotExists = "FailedOperation.MerchantNotExists"
            case merchantPermissionError = "FailedOperation.MerchantPermissionError"
            case midasInternalError = "FailedOperation.MidasInternalError"
            case midasInvalidRequest = "FailedOperation.MidasInvalidRequest"
            case midasNeedRetry = "FailedOperation.MidasNeedRetry"
            case midasRegisterUnfinished = "FailedOperation.MidasRegisterUnfinished"
            case midasRepeatOrder = "FailedOperation.MidasRepeatOrder"
            case midasRisk = "FailedOperation.MidasRisk"
            case midasStatusNotMatch = "FailedOperation.MidasStatusNotMatch"
            case midasUnsupportedAction = "FailedOperation.MidasUnsupportedAction"
            case missingParameter = "FailedOperation.MissingParameter"
            case modifyMerchantFailed = "FailedOperation.ModifyMerchantFailed"
            case mountNotFound = "FailedOperation.MountNotFound"
            case noAuth = "FailedOperation.NoAuth"
            case noRecord = "FailedOperation.NoRecord"
            case notEnough = "FailedOperation.NotEnough"
            case notFound = "FailedOperation.NotFound"
            case notifyUrlParseError = "FailedOperation.NotifyUrlParseError"
            case ocCompletedOrder = "FailedOperation.OcCompletedOrder"
            case ocRepeatOrder = "FailedOperation.OcRepeatOrder"
            case orderLocked = "FailedOperation.OrderLocked"
            case orderNotActivated = "FailedOperation.OrderNotActivated"
            case orderRefundError = "FailedOperation.OrderRefundError"
            case paBankError = "FailedOperation.PABankError"
            case paramError = "FailedOperation.ParamError"
            case parameterError = "FailedOperation.ParameterError"
            case parentAppIdError = "FailedOperation.ParentAppIdError"
            case portalError = "FailedOperation.PortalError"
            case queryAgentStatements = "FailedOperation.QueryAgentStatements"
            case queryContractNull = "FailedOperation.QueryContractNull"
            case queryMchannelError = "FailedOperation.QueryMchannelError"
            case queryModeError = "FailedOperation.QueryModeError"
            case queryOrderError = "FailedOperation.QueryOrderError"
            case queryResultNull = "FailedOperation.QueryResultNull"
            case quotaExceed = "FailedOperation.QuotaExceed"
            case refundInfoDuplicate = "FailedOperation.RefundInfoDuplicate"
            case refundNotRetrieable = "FailedOperation.RefundNotRetrieable"
            case refundProcessIng = "FailedOperation.RefundProcessIng"
            case refundTransactionClosed = "FailedOperation.RefundTransactionClosed"
            case refundTransactionFinished = "FailedOperation.RefundTransactionFinished"
            case sdkError = "FailedOperation.SDKError"
            case serviceError = "FailedOperation.ServiceError"
            case signError = "FailedOperation.SignError"
            case syncMchannelError = "FailedOperation.SyncMchannelError"
            case systemError = "FailedOperation.SystemError"
            case terminateMchannelError = "FailedOperation.TerminateMchannelError"
            case unknown = "FailedOperation.Unknown"
            case unmarshalError = "FailedOperation.UnmarshalError"
            case updateContractStatusFailed = "FailedOperation.UpdateContractStatusFailed"
            case uploadTaxList = "FailedOperation.UploadTaxList"
            case uploadTaxPayment = "FailedOperation.UploadTaxPayment"
            case wechatError = "FailedOperation.WechatError"
            case wxCrtNotSet = "FailedOperation.WxCrtNotSet"
            case xmlFail = "FailedOperation.XmlFail"
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

        /// 商户状态异常。
        public static var abnormalMerchantState: FailedOperation {
            FailedOperation(.abnormalMerchantState)
        }

        /// 订单状态异常。
        public static var abnormalOrderState: FailedOperation {
            FailedOperation(.abnormalOrderState)
        }

        /// 账户未绑定。
        public static var acctNotBind: FailedOperation {
            FailedOperation(.acctNotBind)
        }

        /// 账户不存在。
        public static var acctNotExist: FailedOperation {
            FailedOperation(.acctNotExist)
        }

        /// 接口调用出错。
        public static var action: FailedOperation {
            FailedOperation(.action)
        }

        /// 配置参数action无效。
        public static var actionInvalid: FailedOperation {
            FailedOperation(.actionInvalid)
        }

        /// 商户创建失败。
        public static var addMerchantFailed: FailedOperation {
            FailedOperation(.addMerchantFailed)
        }

        /// 订单已经存在。
        public static var alreadyExists: FailedOperation {
            FailedOperation(.alreadyExists)
        }

        /// 该业务代码对应的配置没有发布到相应的环境。
        public static var appDeny: FailedOperation {
            FailedOperation(.appDeny)
        }

        /// 商户号和appid没有绑定关系。
        public static var appidMchidNotMatch: FailedOperation {
            FailedOperation(.appidMchidNotMatch)
        }

        /// 请求下游服务错误。
        public static var backCallError: FailedOperation {
            FailedOperation(.backCallError)
        }

        /// 云鉴内部调用失败。
        public static var backendError: FailedOperation {
            FailedOperation(.backendError)
        }

        /// 账户余额不足。
        public static var balanceInsufficient: FailedOperation {
            FailedOperation(.balanceInsufficient)
        }

        /// 调用银行接口失败，可能原因： 银行接口超时或为获取到返回值 银行接口返回非法。
        public static var bankFailed: FailedOperation {
            FailedOperation(.bankFailed)
        }

        /// 余额不足。
        public static var banlanceNotEnoughError: FailedOperation {
            FailedOperation(.banlanceNotEnoughError)
        }

        /// 内部请求渠道网关错误。
        public static var callChannelGatewayError: FailedOperation {
            FailedOperation(.callChannelGatewayError)
        }

        /// 支付渠道错误，请确认配置信息是 否提交至聚鑫。
        public static var channelDeny: FailedOperation {
            FailedOperation(.channelDeny)
        }

        /// 支付渠道错误。
        public static var channelError: FailedOperation {
            FailedOperation(.channelError)
        }

        /// 渠道方退款失败。
        ///
        /// 渠道方拒绝该笔退款请求，请联系米大师定位具体问题原因。
        public static var channelRefundFailed: FailedOperation {
            FailedOperation(.channelRefundFailed)
        }

        /// 渠道退款频率受限。
        public static var channelRefundFrequencyLimited: FailedOperation {
            FailedOperation(.channelRefundFrequencyLimited)
        }

        /// 终止合约失败。
        public static var closeContractDbFailed: FailedOperation {
            FailedOperation(.closeContractDbFailed)
        }

        /// 终止合约模式非法。
        public static var closeContractModeInvalid: FailedOperation {
            FailedOperation(.closeContractModeInvalid)
        }

        /// 下载服务器配置错误。
        public static var configError: FailedOperation {
            FailedOperation(.configError)
        }

        /// 签约状态不正确。
        public static var contractStatusError: FailedOperation {
            FailedOperation(.contractStatusError)
        }

        /// 录入代理商出错。
        public static var createAgent: FailedOperation {
            FailedOperation(.createAgent)
        }

        /// 消费订单发起失败。
        public static var createOrderError: FailedOperation {
            FailedOperation(.createOrderError)
        }

        /// 消费订单发起状态未知，请调用查询接口进行查询。
        public static var createOrderUnknown: FailedOperation {
            FailedOperation(.createOrderUnknown)
        }

        /// 连接数据库失败。
        public static var dbClientConnectFailed: FailedOperation {
            FailedOperation(.dbClientConnectFailed)
        }

        /// 数据库插入数据失败。
        public static var dbClientInserttFailed: FailedOperation {
            FailedOperation(.dbClientInserttFailed)
        }

        /// 查询数据失败。
        public static var dbClientQueryFailed: FailedOperation {
            FailedOperation(.dbClientQueryFailed)
        }

        /// 数据更新失败。
        public static var dbClientUpdateFailed: FailedOperation {
            FailedOperation(.dbClientUpdateFailed)
        }

        /// 下载服务器数据库配置错误。
        public static var dbConfigError: FailedOperation {
            FailedOperation(.dbConfigError)
        }

        /// 对账单下载失败。
        public static var downloadBillError: FailedOperation {
            FailedOperation(.downloadBillError)
        }

        /// 未查到第三方渠道合约数据。
        public static var externalContractIndexNotFound: FailedOperation {
            FailedOperation(.externalContractIndexNotFound)
        }

        /// 未查到第三方渠道合约数据。
        public static var externalContractNotFound: FailedOperation {
            FailedOperation(.externalContractNotFound)
        }

        /// 外部签约状态无效。
        public static var externalContractStatusInvalid: FailedOperation {
            FailedOperation(.externalContractStatusInvalid)
        }

        /// 第三方渠道商户合约配置查询错误。
        public static var externalMerchantContractInfoConfigNoFound: FailedOperation {
            FailedOperation(.externalMerchantContractInfoConfigNoFound)
        }

        /// 第三方渠道商户配置信息查询错误。
        public static var externalMerchantIndexConfigNoFound: FailedOperation {
            FailedOperation(.externalMerchantIndexConfigNoFound)
        }

        /// 第三方渠道商户配置信息查询错误。
        public static var externalMerchantInfoConfigNoFound: FailedOperation {
            FailedOperation(.externalMerchantInfoConfigNoFound)
        }

        /// 对账文件不存在，尚未生成。
        public static var fileNotExist: FailedOperation {
            FailedOperation(.fileNotExist)
        }

        /// 频率超限。
        public static var frequencyLimited: FailedOperation {
            FailedOperation(.frequencyLimited)
        }

        /// 获取日结报表列表出错。
        public static var getLiveDailySummary: FailedOperation {
            FailedOperation(.getLiveDailySummary)
        }

        /// 内部http方式请求下游服务错误。
        public static var httpDoRequestError: FailedOperation {
            FailedOperation(.httpDoRequestError)
        }

        /// 内部服务超时。
        public static var internalServiceTimeout: FailedOperation {
            FailedOperation(.internalServiceTimeout)
        }

        /// 参数错误。
        public static var invalidParameter: FailedOperation {
            FailedOperation(.invalidParameter)
        }

        /// 退款金额无效。
        public static var invalidRefundAmt: FailedOperation {
            FailedOperation(.invalidRefundAmt)
        }

        /// 请求参数符合参数格式，但不符合业务规则。
        public static var invalidRequest: FailedOperation {
            FailedOperation(.invalidRequest)
        }

        /// 发票已提交。
        public static var invoiceExist: FailedOperation {
            FailedOperation(.invoiceExist)
        }

        /// 文件为空，未生成或者当天无数据。
        public static var isEmpty: FailedOperation {
            FailedOperation(.isEmpty)
        }

        /// 序列化出错。
        public static var marshalError: FailedOperation {
            FailedOperation(.marshalError)
        }

        /// 商户余额不足。
        public static var merchantBalanceNotEnough: FailedOperation {
            FailedOperation(.merchantBalanceNotEnough)
        }

        /// 商户信息验证失败。
        public static var merchantCheckFailed: FailedOperation {
            FailedOperation(.merchantCheckFailed)
        }

        /// 商户创建失败。
        public static var merchantCreateFailed: FailedOperation {
            FailedOperation(.merchantCreateFailed)
        }

        /// 商户已存在。
        public static var merchantExist: FailedOperation {
            FailedOperation(.merchantExist)
        }

        /// 查无此商户。
        public static var merchantNotExist: FailedOperation {
            FailedOperation(.merchantNotExist)
        }

        /// 商户不存在。
        public static var merchantNotExists: FailedOperation {
            FailedOperation(.merchantNotExists)
        }

        /// 商户权限错误。
        public static var merchantPermissionError: FailedOperation {
            FailedOperation(.merchantPermissionError)
        }

        /// 聚鑫内部系统错误。
        ///
        /// 请联系我们
        public static var midasInternalError: FailedOperation {
            FailedOperation(.midasInternalError)
        }

        /// 聚鑫请求无效。
        public static var midasInvalidRequest: FailedOperation {
            FailedOperation(.midasInvalidRequest)
        }

        /// 聚鑫需要重试。
        ///
        /// 请联系我们
        public static var midasNeedRetry: FailedOperation {
            FailedOperation(.midasNeedRetry)
        }

        /// 聚鑫当前企业对该产品能力有未完成的申请单。
        ///
        /// 请联系我们
        public static var midasRegisterUnfinished: FailedOperation {
            FailedOperation(.midasRegisterUnfinished)
        }

        /// 聚鑫订单已经提交。
        ///
        /// 请联系我们
        public static var midasRepeatOrder: FailedOperation {
            FailedOperation(.midasRepeatOrder)
        }

        /// 通用风控系统错误，被风控拦截。
        ///
        /// 请联系我们
        public static var midasRisk: FailedOperation {
            FailedOperation(.midasRisk)
        }

        /// 聚鑫支付状态不匹配。
        public static var midasStatusNotMatch: FailedOperation {
            FailedOperation(.midasStatusNotMatch)
        }

        /// 聚鑫不支持该操作。
        ///
        /// 请联系我们
        public static var midasUnsupportedAction: FailedOperation {
            FailedOperation(.midasUnsupportedAction)
        }

        /// 参数缺失。
        public static var missingParameter: FailedOperation {
            FailedOperation(.missingParameter)
        }

        /// 商户修改失败。
        public static var modifyMerchantFailed: FailedOperation {
            FailedOperation(.modifyMerchantFailed)
        }

        /// 记录不存在。
        ///
        /// 未查询到相关记录
        public static var mountNotFound: FailedOperation {
            FailedOperation(.mountNotFound)
        }

        /// 商户信息不合法。
        public static var noAuth: FailedOperation {
            FailedOperation(.noAuth)
        }

        /// 订单不存在。
        public static var noRecord: FailedOperation {
            FailedOperation(.noRecord)
        }

        /// 资金不足。
        public static var notEnough: FailedOperation {
            FailedOperation(.notEnough)
        }

        /// 记录不存在。
        public static var notFound: FailedOperation {
            FailedOperation(.notFound)
        }

        /// 业务的签约通知url解析错误。
        public static var notifyUrlParseError: FailedOperation {
            FailedOperation(.notifyUrlParseError)
        }

        /// 订单已经支付。
        public static var ocCompletedOrder: FailedOperation {
            FailedOperation(.ocCompletedOrder)
        }

        /// 订单号重复，但是两次请求参数不 一致。
        public static var ocRepeatOrder: FailedOperation {
            FailedOperation(.ocRepeatOrder)
        }

        /// 退款主单被锁，请待前退款单完成后再发起退款。
        public static var orderLocked: FailedOperation {
            FailedOperation(.orderLocked)
        }

        /// 订单状态不可用。
        public static var orderNotActivated: FailedOperation {
            FailedOperation(.orderNotActivated)
        }

        /// 消费订单退款失败。
        public static var orderRefundError: FailedOperation {
            FailedOperation(.orderRefundError)
        }

        /// 平安银行返回错误。
        public static var paBankError: FailedOperation {
            FailedOperation(.paBankError)
        }

        /// 微信返回参数错误。
        public static var paramError: FailedOperation {
            FailedOperation(.paramError)
        }

        /// 请求参数错误。
        public static var parameterError: FailedOperation {
            FailedOperation(.parameterError)
        }

        /// AppId、SubAppId不匹配。
        public static var parentAppIdError: FailedOperation {
            FailedOperation(.parentAppIdError)
        }

        /// 聚鑫内部系统调用失败。
        public static var portalError: FailedOperation {
            FailedOperation(.portalError)
        }

        /// 查询代理商结算单链接出错。
        public static var queryAgentStatements: FailedOperation {
            FailedOperation(.queryAgentStatements)
        }

        /// 查询签约关系不存在。
        public static var queryContractNull: FailedOperation {
            FailedOperation(.queryContractNull)
        }

        /// 查询渠道返回错误。
        public static var queryMchannelError: FailedOperation {
            FailedOperation(.queryMchannelError)
        }

        /// 查询模式错误。
        public static var queryModeError: FailedOperation {
            FailedOperation(.queryModeError)
        }

        /// 消费订单查询失败。
        public static var queryOrderError: FailedOperation {
            FailedOperation(.queryOrderError)
        }

        /// 渠道查询结果为空，请传入正确参数。
        public static var queryResultNull: FailedOperation {
            FailedOperation(.queryResultNull)
        }

        /// 超出商户单日转账额度。
        public static var quotaExceed: FailedOperation {
            FailedOperation(.quotaExceed)
        }

        /// 退款信息重复。
        public static var refundInfoDuplicate: FailedOperation {
            FailedOperation(.refundInfoDuplicate)
        }

        /// 不可重试退款。
        public static var refundNotRetrieable: FailedOperation {
            FailedOperation(.refundNotRetrieable)
        }

        /// 退款处理中。
        ///
        /// 待渠道完成退款操作，请稍后查看退款结果。
        public static var refundProcessIng: FailedOperation {
            FailedOperation(.refundProcessIng)
        }

        /// 退款交易已结束。
        public static var refundTransactionClosed: FailedOperation {
            FailedOperation(.refundTransactionClosed)
        }

        /// 退款交易已完成，请勿重复操作。
        public static var refundTransactionFinished: FailedOperation {
            FailedOperation(.refundTransactionFinished)
        }

        /// 云鉴内部调用失败。
        public static var sdkError: FailedOperation {
            FailedOperation(.sdkError)
        }

        /// 接口执行失败。
        public static var serviceError: FailedOperation {
            FailedOperation(.serviceError)
        }

        /// 签名错误。
        public static var signError: FailedOperation {
            FailedOperation(.signError)
        }

        /// 调用后端同步服务失败。
        public static var syncMchannelError: FailedOperation {
            FailedOperation(.syncMchannelError)
        }

        /// 系统内部错误。
        public static var systemError: FailedOperation {
            FailedOperation(.systemError)
        }

        /// 调用后端解约服务失败。
        public static var terminateMchannelError: FailedOperation {
            FailedOperation(.terminateMchannelError)
        }

        /// 未知错误。
        public static var unknown: FailedOperation {
            FailedOperation(.unknown)
        }

        /// 反序列化出错。
        public static var unmarshalError: FailedOperation {
            FailedOperation(.unmarshalError)
        }

        /// 冲正签约状态失败。
        public static var updateContractStatusFailed: FailedOperation {
            FailedOperation(.updateContractStatusFailed)
        }

        /// 上传代理商完税列表出错。
        public static var uploadTaxList: FailedOperation {
            FailedOperation(.uploadTaxList)
        }

        /// 上传代理商完税证明出错。
        public static var uploadTaxPayment: FailedOperation {
            FailedOperation(.uploadTaxPayment)
        }

        /// 调用渠道错误，请确认渠道如微信 wxappid是否配置正确。
        public static var wechatError: FailedOperation {
            FailedOperation(.wechatError)
        }

        /// 微信支付证书未配置。
        public static var wxCrtNotSet: FailedOperation {
            FailedOperation(.wxCrtNotSet)
        }

        /// xml格式错误。
        public static var xmlFail: FailedOperation {
            FailedOperation(.xmlFail)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asCpdpError() -> TCCpdpError {
            let code: TCCpdpError.Code
            switch self.error {
            case .abnormalMerchantState:
                code = .failedOperation_AbnormalMerchantState
            case .abnormalOrderState:
                code = .failedOperation_AbnormalOrderState
            case .acctNotBind:
                code = .failedOperation_AcctNotBind
            case .acctNotExist:
                code = .failedOperation_AcctNotExist
            case .action:
                code = .failedOperation_Action
            case .actionInvalid:
                code = .failedOperation_ActionInvalid
            case .addMerchantFailed:
                code = .failedOperation_AddMerchantFailed
            case .alreadyExists:
                code = .failedOperation_AlreadyExists
            case .appDeny:
                code = .failedOperation_AppDeny
            case .appidMchidNotMatch:
                code = .failedOperation_AppidMchidNotMatch
            case .backCallError:
                code = .failedOperation_BackCallError
            case .backendError:
                code = .failedOperation_BackendError
            case .balanceInsufficient:
                code = .failedOperation_BalanceInsufficient
            case .bankFailed:
                code = .failedOperation_BankFailed
            case .banlanceNotEnoughError:
                code = .failedOperation_BanlanceNotEnoughError
            case .callChannelGatewayError:
                code = .failedOperation_CallChannelGatewayError
            case .channelDeny:
                code = .failedOperation_ChannelDeny
            case .channelError:
                code = .failedOperation_ChannelError
            case .channelRefundFailed:
                code = .failedOperation_ChannelRefundFailed
            case .channelRefundFrequencyLimited:
                code = .failedOperation_ChannelRefundFrequencyLimited
            case .closeContractDbFailed:
                code = .failedOperation_CloseContractDbFailed
            case .closeContractModeInvalid:
                code = .failedOperation_CloseContractModeInvalid
            case .configError:
                code = .failedOperation_ConfigError
            case .contractStatusError:
                code = .failedOperation_ContractStatusError
            case .createAgent:
                code = .failedOperation_CreateAgent
            case .createOrderError:
                code = .failedOperation_CreateOrderError
            case .createOrderUnknown:
                code = .failedOperation_CreateOrderUnknown
            case .dbClientConnectFailed:
                code = .failedOperation_DbClientConnectFailed
            case .dbClientInserttFailed:
                code = .failedOperation_DbClientInserttFailed
            case .dbClientQueryFailed:
                code = .failedOperation_DbClientQueryFailed
            case .dbClientUpdateFailed:
                code = .failedOperation_DbClientUpdateFailed
            case .dbConfigError:
                code = .failedOperation_DBConfigError
            case .downloadBillError:
                code = .failedOperation_DownloadBillError
            case .externalContractIndexNotFound:
                code = .failedOperation_ExternalContractIndexNotFound
            case .externalContractNotFound:
                code = .failedOperation_ExternalContractNotFound
            case .externalContractStatusInvalid:
                code = .failedOperation_ExternalContractStatusInvalid
            case .externalMerchantContractInfoConfigNoFound:
                code = .failedOperation_ExternalMerchantContractInfoConfigNoFound
            case .externalMerchantIndexConfigNoFound:
                code = .failedOperation_ExternalMerchantIndexConfigNoFound
            case .externalMerchantInfoConfigNoFound:
                code = .failedOperation_ExternalMerchantInfoConfigNoFound
            case .fileNotExist:
                code = .failedOperation_FileNotExist
            case .frequencyLimited:
                code = .failedOperation_FrequencyLimited
            case .getLiveDailySummary:
                code = .failedOperation_GetLiveDailySummary
            case .httpDoRequestError:
                code = .failedOperation_HttpDoRequestError
            case .internalServiceTimeout:
                code = .failedOperation_InternalServiceTimeout
            case .invalidParameter:
                code = .failedOperation_InvalidParameter
            case .invalidRefundAmt:
                code = .failedOperation_InvalidRefundAmt
            case .invalidRequest:
                code = .failedOperation_InvalidRequest
            case .invoiceExist:
                code = .failedOperation_InvoiceExist
            case .isEmpty:
                code = .failedOperation_IsEmpty
            case .marshalError:
                code = .failedOperation_MarshalError
            case .merchantBalanceNotEnough:
                code = .failedOperation_MerchantBalanceNotEnough
            case .merchantCheckFailed:
                code = .failedOperation_MerchantCheckFailed
            case .merchantCreateFailed:
                code = .failedOperation_MerchantCreateFailed
            case .merchantExist:
                code = .failedOperation_MerchantExist
            case .merchantNotExist:
                code = .failedOperation_MerchantNotExist
            case .merchantNotExists:
                code = .failedOperation_MerchantNotExists
            case .merchantPermissionError:
                code = .failedOperation_MerchantPermissionError
            case .midasInternalError:
                code = .failedOperation_MidasInternalError
            case .midasInvalidRequest:
                code = .failedOperation_MidasInvalidRequest
            case .midasNeedRetry:
                code = .failedOperation_MidasNeedRetry
            case .midasRegisterUnfinished:
                code = .failedOperation_MidasRegisterUnfinished
            case .midasRepeatOrder:
                code = .failedOperation_MidasRepeatOrder
            case .midasRisk:
                code = .failedOperation_MidasRisk
            case .midasStatusNotMatch:
                code = .failedOperation_MidasStatusNotMatch
            case .midasUnsupportedAction:
                code = .failedOperation_MidasUnsupportedAction
            case .missingParameter:
                code = .failedOperation_MissingParameter
            case .modifyMerchantFailed:
                code = .failedOperation_ModifyMerchantFailed
            case .mountNotFound:
                code = .failedOperation_MountNotFound
            case .noAuth:
                code = .failedOperation_NoAuth
            case .noRecord:
                code = .failedOperation_NoRecord
            case .notEnough:
                code = .failedOperation_NotEnough
            case .notFound:
                code = .failedOperation_NotFound
            case .notifyUrlParseError:
                code = .failedOperation_NotifyUrlParseError
            case .ocCompletedOrder:
                code = .failedOperation_OcCompletedOrder
            case .ocRepeatOrder:
                code = .failedOperation_OcRepeatOrder
            case .orderLocked:
                code = .failedOperation_OrderLocked
            case .orderNotActivated:
                code = .failedOperation_OrderNotActivated
            case .orderRefundError:
                code = .failedOperation_OrderRefundError
            case .paBankError:
                code = .failedOperation_PABankError
            case .paramError:
                code = .failedOperation_ParamError
            case .parameterError:
                code = .failedOperation_ParameterError
            case .parentAppIdError:
                code = .failedOperation_ParentAppIdError
            case .portalError:
                code = .failedOperation_PortalError
            case .queryAgentStatements:
                code = .failedOperation_QueryAgentStatements
            case .queryContractNull:
                code = .failedOperation_QueryContractNull
            case .queryMchannelError:
                code = .failedOperation_QueryMchannelError
            case .queryModeError:
                code = .failedOperation_QueryModeError
            case .queryOrderError:
                code = .failedOperation_QueryOrderError
            case .queryResultNull:
                code = .failedOperation_QueryResultNull
            case .quotaExceed:
                code = .failedOperation_QuotaExceed
            case .refundInfoDuplicate:
                code = .failedOperation_RefundInfoDuplicate
            case .refundNotRetrieable:
                code = .failedOperation_RefundNotRetrieable
            case .refundProcessIng:
                code = .failedOperation_RefundProcessIng
            case .refundTransactionClosed:
                code = .failedOperation_RefundTransactionClosed
            case .refundTransactionFinished:
                code = .failedOperation_RefundTransactionFinished
            case .sdkError:
                code = .failedOperation_SDKError
            case .serviceError:
                code = .failedOperation_ServiceError
            case .signError:
                code = .failedOperation_SignError
            case .syncMchannelError:
                code = .failedOperation_SyncMchannelError
            case .systemError:
                code = .failedOperation_SystemError
            case .terminateMchannelError:
                code = .failedOperation_TerminateMchannelError
            case .unknown:
                code = .failedOperation_Unknown
            case .unmarshalError:
                code = .failedOperation_UnmarshalError
            case .updateContractStatusFailed:
                code = .failedOperation_UpdateContractStatusFailed
            case .uploadTaxList:
                code = .failedOperation_UploadTaxList
            case .uploadTaxPayment:
                code = .failedOperation_UploadTaxPayment
            case .wechatError:
                code = .failedOperation_WechatError
            case .wxCrtNotSet:
                code = .failedOperation_WxCrtNotSet
            case .xmlFail:
                code = .failedOperation_XmlFail
            case .other:
                code = .failedOperation
            }
            return TCCpdpError(code, context: self.context)
        }
    }
}
