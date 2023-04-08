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

extension Cpdp {
    /// GetPayRollAuth请求参数结构体
    public struct GetPayRollAuthRequest: TCRequestModel {
        /// 用户在商户对应appid下的唯一标识
        public let openId: String

        /// 微信服务商下特约商户的商户号，由微信支付生成并下发
        public let subMerchantId: String

        /// 是服务商在微信申请公众号/小程序或移动应用成功后分配的账号ID（与服务商主体一致）
        /// 当输入服务商Appid时，会校验其与服务商商户号的绑定关系。服务商APPID和与特约商户APPID至少输入一个，且必须要有拉起领薪卡小程序时使用的APPID
        public let wechatAppId: String?

        /// 特约商户在微信申请公众号/小程序或移动应用成功后分配的账号ID（与特约商户主体一致）
        /// 当输入特约商户Appid时，会校验其与特约商户号的绑定关系。服务商APPID和与特约商户APPID至少输入一个，且必须要有拉起领薪卡小程序时使用的APPID
        public let wechatSubAppId: String?

        public init(openId: String, subMerchantId: String, wechatAppId: String? = nil, wechatSubAppId: String? = nil) {
            self.openId = openId
            self.subMerchantId = subMerchantId
            self.wechatAppId = wechatAppId
            self.wechatSubAppId = wechatSubAppId
        }

        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case subMerchantId = "SubMerchantId"
            case wechatAppId = "WechatAppId"
            case wechatSubAppId = "WechatSubAppId"
        }
    }

    /// GetPayRollAuth返回参数结构体
    public struct GetPayRollAuthResponse: TCResponseModel {
        /// 授权状态：
        /// UNAUTHORIZED：未授权
        /// AUTHORIZED：已授权
        /// DEAUTHORIZED：已取消授权
        public let authStatus: String

        /// 授权时间，遵循[rfc3339](https://datatracker.ietf.org/doc/html/rfc3339)标准格式，格式为YYYY-MM-DDTHH:mm:ss.sss+TIMEZONE，空字符串等同null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authTime: String?

        /// 授权时间，遵循[rfc3339](https://datatracker.ietf.org/doc/html/rfc3339)标准格式，格式为YYYY-MM-DDTHH:mm:ss.sss+TIMEZONE，空字符串等同null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cancelAuthTime: String?

        /// 微信服务商商户的商户号，由微信支付生成并下发
        public let merchantId: String

        /// 用户在商户对应appid下的唯一标识
        public let openId: String

        /// 微信服务商下特约商户的商户号，由微信支付生成并下发
        public let subMerchantId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case authStatus = "AuthStatus"
            case authTime = "AuthTime"
            case cancelAuthTime = "CancelAuthTime"
            case merchantId = "MerchantId"
            case openId = "OpenId"
            case subMerchantId = "SubMerchantId"
            case requestId = "RequestId"
        }
    }

    /// 务工卡-查询授权关系
    @inlinable
    public func getPayRollAuth(_ input: GetPayRollAuthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPayRollAuthResponse> {
        self.client.execute(action: "GetPayRollAuth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 务工卡-查询授权关系
    @inlinable
    public func getPayRollAuth(_ input: GetPayRollAuthRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPayRollAuthResponse {
        try await self.client.execute(action: "GetPayRollAuth", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 务工卡-查询授权关系
    @inlinable
    public func getPayRollAuth(openId: String, subMerchantId: String, wechatAppId: String? = nil, wechatSubAppId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetPayRollAuthResponse> {
        self.getPayRollAuth(.init(openId: openId, subMerchantId: subMerchantId, wechatAppId: wechatAppId, wechatSubAppId: wechatSubAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 务工卡-查询授权关系
    @inlinable
    public func getPayRollAuth(openId: String, subMerchantId: String, wechatAppId: String? = nil, wechatSubAppId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetPayRollAuthResponse {
        try await self.getPayRollAuth(.init(openId: openId, subMerchantId: subMerchantId, wechatAppId: wechatAppId, wechatSubAppId: wechatSubAppId), region: region, logger: logger, on: eventLoop)
    }
}
