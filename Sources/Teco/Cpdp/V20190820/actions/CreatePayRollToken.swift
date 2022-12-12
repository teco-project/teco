//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// CreatePayRollToken请求参数结构体
    public struct CreatePayRollTokenRequest: TCRequestModel {
        /// 用户在商户对应appid下的唯一标识
        public let openId: String
        
        /// 微信服务商下特约商户的商户号，由微信支付生成并下发
        public let subMerchantId: String
        
        /// 用户实名信息，该字段需进行加密处理，加密方法详见[敏感信息加密说明](https://pay.weixin.qq.com/wiki/doc/apiv3_partner/wechatpay/wechatpay4_3.shtml)
        public let userName: String
        
        /// 用户证件号，该字段需进行加密处理，加密方法详见[敏感信息加密说明](https://pay.weixin.qq.com/wiki/doc/apiv3_partner/wechatpay/wechatpay4_3.shtml)
        public let idNo: String
        
        /// 微工卡服务仅支持用于与商户有用工关系的用户，需明确用工类型；参考值：
        /// LONG_TERM_EMPLOYMENT：长期用工，
        /// SHORT_TERM_EMPLOYMENT： 短期用工，
        /// COOPERATION_EMPLOYMENT：合作关系
        public let employmentType: String
        
        /// 是服务商在微信申请公众号/小程序或移动应用成功后分配的账号ID（与服务商主体一致）
        /// 当输入服务商Appid时，会校验其与服务商商户号的绑定关系。服务商APPID和与特约商户APPID至少输入一个，且必须要有拉起领薪卡小程序时使用的APPID
        public let wechatAppId: String?
        
        /// 特约商户在微信申请公众号/小程序或移动应用成功后分配的账号ID（与特约商户主体一致）
        /// 当输入特约商户Appid时，会校验其与特约商户号的绑定关系。服务商APPID和与特约商户APPID至少输入一个，且必须要有拉起领薪卡小程序时使用的APPID
        public let wechatSubAppId: String?
        
        public init (openId: String, subMerchantId: String, userName: String, idNo: String, employmentType: String, wechatAppId: String? = nil, wechatSubAppId: String? = nil) {
            self.openId = openId
            self.subMerchantId = subMerchantId
            self.userName = userName
            self.idNo = idNo
            self.employmentType = employmentType
            self.wechatAppId = wechatAppId
            self.wechatSubAppId = wechatSubAppId
        }
        
        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case subMerchantId = "SubMerchantId"
            case userName = "UserName"
            case idNo = "IdNo"
            case employmentType = "EmploymentType"
            case wechatAppId = "WechatAppId"
            case wechatSubAppId = "WechatSubAppId"
        }
    }
    
    /// CreatePayRollToken返回参数结构体
    public struct CreatePayRollTokenResponse: TCResponseModel {
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
            case expireTime = "ExpireTime"
            case merchantId = "MerchantId"
            case openId = "OpenId"
            case subMerchantId = "SubMerchantId"
            case token = "Token"
            case requestId = "RequestId"
        }
    }
    
    /// 务工卡-生成授权令牌
    @inlinable
    public func createPayRollToken(_ input: CreatePayRollTokenRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreatePayRollTokenResponse > {
        self.client.execute(action: "CreatePayRollToken", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 务工卡-生成授权令牌
    @inlinable
    public func createPayRollToken(_ input: CreatePayRollTokenRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePayRollTokenResponse {
        try await self.client.execute(action: "CreatePayRollToken", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
