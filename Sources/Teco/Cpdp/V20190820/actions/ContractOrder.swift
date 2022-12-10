//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cpdp {
    /// 支付中签约接口
    ///
    /// 应用需要先带上签约信息调用本接口生成支付订单号，并将应答的PayInfo透传给聚鑫SDK，拉起客户端（包括微信公众号/微信小程序/客户端App）支付。
    @inlinable
    public func contractOrder(_ input: ContractOrderRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ContractOrderResponse > {
        self.client.execute(action: "ContractOrder", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 支付中签约接口
    ///
    /// 应用需要先带上签约信息调用本接口生成支付订单号，并将应答的PayInfo透传给聚鑫SDK，拉起客户端（包括微信公众号/微信小程序/客户端App）支付。
    @inlinable
    public func contractOrder(_ input: ContractOrderRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ContractOrderResponse {
        try await self.client.execute(action: "ContractOrder", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ContractOrder请求参数结构体
    public struct ContractOrderRequest: TCRequestModel {
        /// ISO 货币代码，CNY
        public let currencyType: String
        
        /// 聚鑫分配的支付主MidasAppId
        public let midasAppId: String
        
        /// 支付订单号，仅支持数字、字母、下划线（_）、横杠字符（-）、点（.）的组合
        public let outTradeNo: String
        
        /// 商品详情，需要URL编码
        public let productDetail: String
        
        /// 商品ID，仅支持数字、字母、下划线（_）、横杠字符（-）、点（.）的组合
        public let productId: String
        
        /// 商品名称，需要URL编码
        public let productName: String
        
        /// 支付金额，单位： 分
        public let totalAmt: Int64
        
        /// 用户ID，长度不小于5位，仅支持字母和数字的组合
        public let userId: String
        
        /// 银行真实渠道.如:bank_pingan
        public let realChannel: String
        
        /// 原始金额
        public let originalAmt: Int64
        
        /// 聚鑫分配的安全ID
        public let midasSecretId: String
        
        /// 按照聚鑫安全密钥计算的签名
        public let midasSignature: String
        
        /// 签约通知地址
        public let contractNotifyUrl: String
        
        /// Web端回调地址
        public let callbackUrl: String?
        
        /// 指定支付渠道：  wechat：微信支付  qqwallet：QQ钱包 
        ///  bank：网银支付  只有一个渠道时需要指定
        public let channel: String?
        
        /// 透传字段，支付成功回调透传给应用，用于业务透传自定义内容
        public let metadata: String?
        
        /// 购买数量，不传默认为1
        public let quantity: Int64?
        
        /// 聚鑫计费SubAppId，代表子商户
        public let subAppId: String?
        
        /// 子订单信息列表，格式：子订单号、子应用ID、金额。 压缩后最长不可超过65535字节(去除空格，换行，制表符等无意义字符)
        /// 注：接入银行或其他支付渠道服务商模式下，必传
        public let subOrderList: [ContractOrderInSubOrder]?
        
        /// 结算应收金额，单位：分
        public let totalMchIncome: Int64?
        
        /// 平台应收金额，单位：分
        public let totalPlatformIncome: Int64?
        
        /// 微信公众号/小程序支付时为必选，需要传微信下的openid
        public let wxOpenId: String?
        
        /// 在服务商模式下，微信公众号/小程序支付时wx_sub_openid和wx_openid二选一
        public let wxSubOpenId: String?
        
        /// 环境名:
        /// release: 现网环境
        /// sandbox: 沙箱环境
        /// development: 开发环境
        /// 缺省: release
        public let midasEnvironment: String?
        
        /// 微信商户应用ID
        public let wxAppId: String?
        
        /// 微信商户子应用ID
        public let wxSubAppId: String?
        
        /// 支付通知地址
        public let paymentNotifyUrl: String?
        
        /// 传入调用方在Midas注册签约信息时获得的ContractSceneId。若未在Midas注册签约信息，则传入ExternalContractData。注意：ContractSceneId与ExternalContractData必须二选一传入其中一个
        public let contractSceneId: String?
        
        /// 需要按照各个渠道的扩展签约信息规范组装好该字段。若未在Midas注册签约信息，则传入该字段。注意：ContractSceneId与ExternalContractData必须二选一传入其中一个
        public let externalContractData: String?
        
        /// 外部签约协议号，唯一标记一个签约关系。仅支持数字、字母、下划线（_）、横杠字符（-）、点（.）的组合
        public let outContractCode: String?
        
        /// 透传给第三方渠道的附加数据
        public let attachData: String?
        
        /// 展示用的签约用户名称，若不传入时，默认取UserId
        public let contractDisplayName: String?
        
        public init (currencyType: String, midasAppId: String, outTradeNo: String, productDetail: String, productId: String, productName: String, totalAmt: Int64, userId: String, realChannel: String, originalAmt: Int64, midasSecretId: String, midasSignature: String, contractNotifyUrl: String, callbackUrl: String?, channel: String?, metadata: String?, quantity: Int64?, subAppId: String?, subOrderList: [ContractOrderInSubOrder]?, totalMchIncome: Int64?, totalPlatformIncome: Int64?, wxOpenId: String?, wxSubOpenId: String?, midasEnvironment: String?, wxAppId: String?, wxSubAppId: String?, paymentNotifyUrl: String?, contractSceneId: String?, externalContractData: String?, outContractCode: String?, attachData: String?, contractDisplayName: String?) {
            self.currencyType = currencyType
            self.midasAppId = midasAppId
            self.outTradeNo = outTradeNo
            self.productDetail = productDetail
            self.productId = productId
            self.productName = productName
            self.totalAmt = totalAmt
            self.userId = userId
            self.realChannel = realChannel
            self.originalAmt = originalAmt
            self.midasSecretId = midasSecretId
            self.midasSignature = midasSignature
            self.contractNotifyUrl = contractNotifyUrl
            self.callbackUrl = callbackUrl
            self.channel = channel
            self.metadata = metadata
            self.quantity = quantity
            self.subAppId = subAppId
            self.subOrderList = subOrderList
            self.totalMchIncome = totalMchIncome
            self.totalPlatformIncome = totalPlatformIncome
            self.wxOpenId = wxOpenId
            self.wxSubOpenId = wxSubOpenId
            self.midasEnvironment = midasEnvironment
            self.wxAppId = wxAppId
            self.wxSubAppId = wxSubAppId
            self.paymentNotifyUrl = paymentNotifyUrl
            self.contractSceneId = contractSceneId
            self.externalContractData = externalContractData
            self.outContractCode = outContractCode
            self.attachData = attachData
            self.contractDisplayName = contractDisplayName
        }
        
        enum CodingKeys: String, CodingKey {
            case currencyType = "CurrencyType"
            case midasAppId = "MidasAppId"
            case outTradeNo = "OutTradeNo"
            case productDetail = "ProductDetail"
            case productId = "ProductId"
            case productName = "ProductName"
            case totalAmt = "TotalAmt"
            case userId = "UserId"
            case realChannel = "RealChannel"
            case originalAmt = "OriginalAmt"
            case midasSecretId = "MidasSecretId"
            case midasSignature = "MidasSignature"
            case contractNotifyUrl = "ContractNotifyUrl"
            case callbackUrl = "CallbackUrl"
            case channel = "Channel"
            case metadata = "Metadata"
            case quantity = "Quantity"
            case subAppId = "SubAppId"
            case subOrderList = "SubOrderList"
            case totalMchIncome = "TotalMchIncome"
            case totalPlatformIncome = "TotalPlatformIncome"
            case wxOpenId = "WxOpenId"
            case wxSubOpenId = "WxSubOpenId"
            case midasEnvironment = "MidasEnvironment"
            case wxAppId = "WxAppId"
            case wxSubAppId = "WxSubAppId"
            case paymentNotifyUrl = "PaymentNotifyUrl"
            case contractSceneId = "ContractSceneId"
            case externalContractData = "ExternalContractData"
            case outContractCode = "OutContractCode"
            case attachData = "AttachData"
            case contractDisplayName = "ContractDisplayName"
        }
    }
    
    /// ContractOrder返回参数结构体
    public struct ContractOrderResponse: TCResponseModel {
        /// 支付金额，单位： 分
        public let totalAmt: Int64
        
        /// 应用支付订单号
        public let outTradeNo: String
        
        /// 支付参数透传给聚鑫SDK（原文透传给SDK即可，不需要解码）
        public let payInfo: String
        
        /// 聚鑫的交易订单号
        public let transactionId: String
        
        /// 外部签约协议号
        public let outContractCode: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalAmt = "TotalAmt"
            case outTradeNo = "OutTradeNo"
            case payInfo = "PayInfo"
            case transactionId = "TransactionId"
            case outContractCode = "OutContractCode"
            case requestId = "RequestId"
        }
    }
}