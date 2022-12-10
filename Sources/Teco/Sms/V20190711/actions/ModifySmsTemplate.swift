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

extension Sms {
    /// 修改短信模板
    ///
    /// 1. 修改短信正文模板，修改之前请先认真参阅 [腾讯云短信正文模板审核标准](https://cloud.tencent.com/document/product/382/39023)。
    /// 2. ⚠️注意：个人认证用户不支持使用 API 修改短信正文模板，请参阅了解 [实名认证基本介绍](https://cloud.tencent.com/document/product/378/3629)，如果为个人认证请登录 [控制台](https://console.cloud.tencent.com/smsv2) 修改短信正文模板。
    /// 3. 修改短信模板，仅当正文模板为**待审核**或**已拒绝**状态时，才能进行修改，**已审核通过**的正文模板不支持修改。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func modifySmsTemplate(_ input: ModifySmsTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifySmsTemplateResponse > {
        self.client.execute(action: "ModifySmsTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改短信模板
    ///
    /// 1. 修改短信正文模板，修改之前请先认真参阅 [腾讯云短信正文模板审核标准](https://cloud.tencent.com/document/product/382/39023)。
    /// 2. ⚠️注意：个人认证用户不支持使用 API 修改短信正文模板，请参阅了解 [实名认证基本介绍](https://cloud.tencent.com/document/product/378/3629)，如果为个人认证请登录 [控制台](https://console.cloud.tencent.com/smsv2) 修改短信正文模板。
    /// 3. 修改短信模板，仅当正文模板为**待审核**或**已拒绝**状态时，才能进行修改，**已审核通过**的正文模板不支持修改。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func modifySmsTemplate(_ input: ModifySmsTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySmsTemplateResponse {
        try await self.client.execute(action: "ModifySmsTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifySmsTemplate请求参数结构体
    public struct ModifySmsTemplateRequest: TCRequestModel {
        /// 待修改的模板的模板 ID。
        public let templateId: UInt64
        
        /// 新的模板名称。
        public let templateName: String
        
        /// 新的模板内容。
        public let templateContent: String
        
        /// 短信类型，0表示普通短信, 1表示营销短信。
        public let smsType: UInt64
        
        /// 是否国际/港澳台短信：
        /// 0：表示国内短信。
        /// 1：表示国际/港澳台短信。
        public let international: UInt64
        
        /// 模板备注，例如申请原因，使用场景等。
        public let remark: String
        
        public init (templateId: UInt64, templateName: String, templateContent: String, smsType: UInt64, international: UInt64, remark: String) {
            self.templateId = templateId
            self.templateName = templateName
            self.templateContent = templateContent
            self.smsType = smsType
            self.international = international
            self.remark = remark
        }
        
        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case templateName = "TemplateName"
            case templateContent = "TemplateContent"
            case smsType = "SmsType"
            case international = "International"
            case remark = "Remark"
        }
    }
    
    /// ModifySmsTemplate返回参数结构体
    public struct ModifySmsTemplateResponse: TCResponseModel {
        /// 修改模板参数响应
        public let modifyTemplateStatus: ModifyTemplateStatus
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case modifyTemplateStatus = "ModifyTemplateStatus"
            case requestId = "RequestId"
        }
    }
}
