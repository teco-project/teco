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

extension Zj {
    /// SendSms请求参数结构体
    public struct SendSmsRequest: TCRequestModel {
        /// 商户证书
        public let license: String
        
        /// 手机号码,采用 e.164 标准，格式为+[国家或地区码][手机号]，单次请求最多支持200个手机号且要求全为境内手机号,如:+8613800138000
        public let phone: [String]
        
        /// 短信模板id(推荐使用模板id发送,使用内容发送时模板id留空)
        public let templateId: String?
        
        /// 模板参数，若无模板参数，则设置为空。
        public let params: [String]?
        
        /// 短信签名内容，使用 UTF-8 编码，必须填写已审核通过的签名。注：国内短信为必填参数。
        public let sign: String?
        
        /// 国际/港澳台短信 senderid，国内短信填空
        public let senderId: String?
        
        /// 短信类型：{0:普通短信，1:营销短信}，使用内容发送时必填
        public let smsType: UInt64?
        
        /// 是否国际/港澳台短信：
        /// 0：表示国内短信。
        /// 1：表示国际/港澳台短信。使用内容发送时必填
        public let international: UInt64?
        
        /// 发送使用的模板内容,如果有占位符,此处也包括占位符,占位符的实际内容通过Params参数传递,使用模板id发送时此字段为空
        public let content: String?
        
        public init (license: String, phone: [String], templateId: String? = nil, params: [String]? = nil, sign: String? = nil, senderId: String? = nil, smsType: UInt64? = nil, international: UInt64? = nil, content: String? = nil) {
            self.license = license
            self.phone = phone
            self.templateId = templateId
            self.params = params
            self.sign = sign
            self.senderId = senderId
            self.smsType = smsType
            self.international = international
            self.content = content
        }
        
        enum CodingKeys: String, CodingKey {
            case license = "License"
            case phone = "Phone"
            case templateId = "TemplateId"
            case params = "Params"
            case sign = "Sign"
            case senderId = "SenderId"
            case smsType = "SmsType"
            case international = "International"
            case content = "Content"
        }
    }
    
    /// SendSms返回参数结构体
    public struct SendSmsResponse: TCResponseModel {
        /// 出参数据
        public let data: [SendSmsPaasDataStruct]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 发送短信
    @inlinable
    public func sendSms(_ input: SendSmsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SendSmsResponse > {
        self.client.execute(action: "SendSms", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 发送短信
    @inlinable
    public func sendSms(_ input: SendSmsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendSmsResponse {
        try await self.client.execute(action: "SendSms", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
