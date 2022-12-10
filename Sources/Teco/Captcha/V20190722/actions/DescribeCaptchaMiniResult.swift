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

extension Captcha {
    /// 核查验证码票据结果(小程序插件)
    ///
    /// 核查验证码票据结果(小程序插件) 
    @inlinable
    public func describeCaptchaMiniResult(_ input: DescribeCaptchaMiniResultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeCaptchaMiniResultResponse > {
        self.client.execute(action: "DescribeCaptchaMiniResult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 核查验证码票据结果(小程序插件)
    ///
    /// 核查验证码票据结果(小程序插件) 
    @inlinable
    public func describeCaptchaMiniResult(_ input: DescribeCaptchaMiniResultRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCaptchaMiniResultResponse {
        try await self.client.execute(action: "DescribeCaptchaMiniResult", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeCaptchaMiniResult请求参数结构体
    public struct DescribeCaptchaMiniResultRequest: TCRequestModel {
        /// 固定填值：9（滑块验证码）
        public let captchaType: UInt64
        
        /// 验证码返回给用户的票据
        public let ticket: String
        
        /// 业务侧获取到的验证码使用者的外网IP
        public let userIp: String
        
        /// 验证码应用ID。登录 [验证码控制台](https://console.cloud.tencent.com/captcha/graphical)，在验证列表的【密钥】列，即可查看到CaptchaAppId。
        public let captchaAppId: UInt64
        
        /// 验证码应用密钥。登录 [验证码控制台](https://console.cloud.tencent.com/captcha/graphical)，在验证列表的【密钥】列，即可查看到AppSecretKey。AppSecretKey属于服务器端校验验证码票据的密钥，请妥善保密，请勿泄露给第三方。
        public let appSecretKey: String
        
        /// 业务 ID，网站或应用在多个业务中使用此服务，通过此 ID 区分统计数据
        public let businessId: UInt64?
        
        /// 场景 ID，网站或应用的业务下有多个场景使用此服务，通过此 ID 区分统计数据
        public let sceneId: UInt64?
        
        /// mac 地址或设备唯一标识
        public let macAddress: String?
        
        /// 手机设备号
        public let imei: String?
        
        public init (captchaType: UInt64, ticket: String, userIp: String, captchaAppId: UInt64, appSecretKey: String, businessId: UInt64?, sceneId: UInt64?, macAddress: String?, imei: String?) {
            self.captchaType = captchaType
            self.ticket = ticket
            self.userIp = userIp
            self.captchaAppId = captchaAppId
            self.appSecretKey = appSecretKey
            self.businessId = businessId
            self.sceneId = sceneId
            self.macAddress = macAddress
            self.imei = imei
        }
        
        enum CodingKeys: String, CodingKey {
            case captchaType = "CaptchaType"
            case ticket = "Ticket"
            case userIp = "UserIp"
            case captchaAppId = "CaptchaAppId"
            case appSecretKey = "AppSecretKey"
            case businessId = "BusinessId"
            case sceneId = "SceneId"
            case macAddress = "MacAddress"
            case imei = "Imei"
        }
    }
    
    /// DescribeCaptchaMiniResult返回参数结构体
    public struct DescribeCaptchaMiniResultResponse: TCResponseModel {
        /// 1       ticket verification succeeded     票据验证成功
        /// 7       CaptchaAppId does not match     票据与验证码应用APPID不匹配
        /// 8       ticket expired     票据超时
        /// 10     ticket format error     票据格式不正确
        /// 15     ticket decryption failed     票据解密失败
        /// 16     CaptchaAppId wrong format     检查验证码应用APPID错误
        /// 21     ticket error     票据验证错误
        /// 25     invalid ticket     无效票据
        /// 26     system internal error     系统内部错误
        /// 31 	   UnauthorizedOperation.Unauthorized	无有效套餐包/账户已欠费
        /// 100   param err     参数校验错误
        public let captchaCode: Int64
        
        /// 状态描述及验证错误信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let captchaMsg: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case captchaCode = "CaptchaCode"
            case captchaMsg = "CaptchaMsg"
            case requestId = "RequestId"
        }
    }
}