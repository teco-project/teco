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

extension Sms {
    /// SendSms请求参数结构体
    public struct SendSmsRequest: TCRequestModel {
        /// 下发手机号码，采用 e.164 标准，格式为+[国家或地区码][手机号]，单次请求最多支持200个手机号且要求全为境内手机号或全为境外手机号。
        /// 例如：+8613711112222， 其中前面有一个+号 ，86为国家码，13711112222为手机号。
        public let phoneNumberSet: [String]

        /// 模板 ID，必须填写已审核通过的模板 ID。模板ID可登录 [短信控制台](https://console.cloud.tencent.com/smsv2) 查看，若向境外手机号发送短信，仅支持使用国际/港澳台短信模板。
        public let templateID: String

        /// 短信SdkAppid在 [短信控制台](https://console.cloud.tencent.com/smsv2)  添加应用后生成的实际SdkAppid，示例如1400006666。
        public let smsSdkAppid: String

        /// 短信签名内容，使用 UTF-8 编码，必须填写已审核通过的签名，签名信息可登录 [短信控制台](https://console.cloud.tencent.com/smsv2)  查看。注：国内短信为必填参数。
        public let sign: String?

        /// 模板参数，若无模板参数，则设置为空。
        public let templateParamSet: [String]?

        /// 短信码号扩展号，默认未开通，如需开通请联系 [sms helper](https://cloud.tencent.com/document/product/382/3773)。
        public let extendCode: String?

        /// 用户的 session 内容，可以携带用户侧 ID 等上下文信息，server 会原样返回。
        public let sessionContext: String?

        /// 国内短信无senderid，无需填写该项；若需开通国际/港澳台短信senderid，请联系smshelper。
        public let senderId: String?

        public init(phoneNumberSet: [String], templateID: String, smsSdkAppid: String, sign: String? = nil, templateParamSet: [String]? = nil, extendCode: String? = nil, sessionContext: String? = nil, senderId: String? = nil) {
            self.phoneNumberSet = phoneNumberSet
            self.templateID = templateID
            self.smsSdkAppid = smsSdkAppid
            self.sign = sign
            self.templateParamSet = templateParamSet
            self.extendCode = extendCode
            self.sessionContext = sessionContext
            self.senderId = senderId
        }

        enum CodingKeys: String, CodingKey {
            case phoneNumberSet = "PhoneNumberSet"
            case templateID = "TemplateID"
            case smsSdkAppid = "SmsSdkAppid"
            case sign = "Sign"
            case templateParamSet = "TemplateParamSet"
            case extendCode = "ExtendCode"
            case sessionContext = "SessionContext"
            case senderId = "SenderId"
        }
    }

    /// SendSms返回参数结构体
    public struct SendSmsResponse: TCResponseModel {
        /// 短信发送状态。
        public let sendStatusSet: [SendStatus]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case sendStatusSet = "SendStatusSet"
            case requestId = "RequestId"
        }
    }

    /// 发送短信
    ///
    /// 短信发送接口，用于给用户发短信验证码、通知类短信或营销短信。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func sendSms(_ input: SendSmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendSmsResponse> {
        self.client.execute(action: "SendSms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发送短信
    ///
    /// 短信发送接口，用于给用户发短信验证码、通知类短信或营销短信。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func sendSms(_ input: SendSmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendSmsResponse {
        try await self.client.execute(action: "SendSms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发送短信
    ///
    /// 短信发送接口，用于给用户发短信验证码、通知类短信或营销短信。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func sendSms(phoneNumberSet: [String], templateID: String, smsSdkAppid: String, sign: String? = nil, templateParamSet: [String]? = nil, extendCode: String? = nil, sessionContext: String? = nil, senderId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SendSmsResponse> {
        self.sendSms(.init(phoneNumberSet: phoneNumberSet, templateID: templateID, smsSdkAppid: smsSdkAppid, sign: sign, templateParamSet: templateParamSet, extendCode: extendCode, sessionContext: sessionContext, senderId: senderId), region: region, logger: logger, on: eventLoop)
    }

    /// 发送短信
    ///
    /// 短信发送接口，用于给用户发短信验证码、通知类短信或营销短信。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func sendSms(phoneNumberSet: [String], templateID: String, smsSdkAppid: String, sign: String? = nil, templateParamSet: [String]? = nil, extendCode: String? = nil, sessionContext: String? = nil, senderId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendSmsResponse {
        try await self.sendSms(.init(phoneNumberSet: phoneNumberSet, templateID: templateID, smsSdkAppid: smsSdkAppid, sign: sign, templateParamSet: templateParamSet, extendCode: extendCode, sessionContext: sessionContext, senderId: senderId), region: region, logger: logger, on: eventLoop)
    }
}
