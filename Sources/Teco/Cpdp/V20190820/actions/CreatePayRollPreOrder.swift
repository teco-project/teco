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

import Logging
import NIOCore
import TecoCore

extension Cpdp {
    /// CreatePayRollPreOrder请求参数结构体
    public struct CreatePayRollPreOrderRequest: TCRequestModel {
        /// 用户在商户对应appid下的唯一标识
        public let openId: String

        /// 微信服务商下特约商户的商户号，由微信支付生成并下发
        public let subMerchantId: String

        /// 商户系统内部的商家核身单号，要求此参数只能由数字、大小写字母组成，在服务商内部唯一
        public let authNumber: String

        /// 该劳务活动的项目名称
        public let projectName: String

        /// 该工人所属的用工企业
        public let companyName: String

        /// 是服务商在微信申请公众号/小程序或移动应用成功后分配的账号ID（与服务商主体一致）
        /// 当输入服务商Appid时，会校验其与服务商商户号的绑定关系。服务商APPID和与特约商户APPID至少输入一个，且必须要有拉起领薪卡小程序时使用的APPID
        public let wechatAppId: String?

        /// 特约商户在微信申请公众号/小程序或移动应用成功后分配的账号ID（与特约商户主体一致）
        /// 当输入特约商户Appid时，会校验其与特约商户号的绑定关系。服务商APPID和与特约商户APPID至少输入一个，且必须要有拉起领薪卡小程序时使用的APPID
        public let wechatSubAppId: String?

        public init(openId: String, subMerchantId: String, authNumber: String, projectName: String, companyName: String, wechatAppId: String? = nil, wechatSubAppId: String? = nil) {
            self.openId = openId
            self.subMerchantId = subMerchantId
            self.authNumber = authNumber
            self.projectName = projectName
            self.companyName = companyName
            self.wechatAppId = wechatAppId
            self.wechatSubAppId = wechatSubAppId
        }

        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case subMerchantId = "SubMerchantId"
            case authNumber = "AuthNumber"
            case projectName = "ProjectName"
            case companyName = "CompanyName"
            case wechatAppId = "WechatAppId"
            case wechatSubAppId = "WechatSubAppId"
        }
    }

    /// CreatePayRollPreOrder返回参数结构体
    public struct CreatePayRollPreOrderResponse: TCResponseModel {
        /// 商户系统内部的商家核身单号，要求此参数只能由数字、大小写字母组成，在服务商内部唯一
        public let authNumber: String

        /// Token有效时间，单位秒
        public let expireTime: Int64

        /// 微信服务商商户的商户号，由微信支付生成并下发
        public let merchantId: String

        /// 用户在商户对应appid下的唯一标识
        public let openId: String

        /// 微信服务商下特约商户的商户号，由微信支付生成并下发
        public let subMerchantId: String

        /// Token值
        public let token: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case authNumber = "AuthNumber"
            case expireTime = "ExpireTime"
            case merchantId = "MerchantId"
            case openId = "OpenId"
            case subMerchantId = "SubMerchantId"
            case token = "Token"
            case requestId = "RequestId"
        }
    }

    /// 务工卡-核身预下单
    @inlinable
    public func createPayRollPreOrder(_ input: CreatePayRollPreOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePayRollPreOrderResponse> {
        self.client.execute(action: "CreatePayRollPreOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 务工卡-核身预下单
    @inlinable
    public func createPayRollPreOrder(_ input: CreatePayRollPreOrderRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePayRollPreOrderResponse {
        try await self.client.execute(action: "CreatePayRollPreOrder", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 务工卡-核身预下单
    @inlinable
    public func createPayRollPreOrder(openId: String, subMerchantId: String, authNumber: String, projectName: String, companyName: String, wechatAppId: String? = nil, wechatSubAppId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePayRollPreOrderResponse> {
        self.createPayRollPreOrder(.init(openId: openId, subMerchantId: subMerchantId, authNumber: authNumber, projectName: projectName, companyName: companyName, wechatAppId: wechatAppId, wechatSubAppId: wechatSubAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 务工卡-核身预下单
    @inlinable
    public func createPayRollPreOrder(openId: String, subMerchantId: String, authNumber: String, projectName: String, companyName: String, wechatAppId: String? = nil, wechatSubAppId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePayRollPreOrderResponse {
        try await self.createPayRollPreOrder(.init(openId: openId, subMerchantId: subMerchantId, authNumber: authNumber, projectName: projectName, companyName: companyName, wechatAppId: wechatAppId, wechatSubAppId: wechatSubAppId), region: region, logger: logger, on: eventLoop)
    }
}
