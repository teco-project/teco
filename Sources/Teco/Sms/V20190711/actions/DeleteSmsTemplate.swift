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
    /// 删除短信模板
    ///
    /// ⚠️注意：个人认证用户不支持使用 API 删除短信正文模板，请登录 [控制台](https://console.cloud.tencent.com/smsv2) 删除短信正文模板，如需了解请参阅 [实名认证基本介绍](https://cloud.tencent.com/document/product/378/3629)。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func deleteSmsTemplate(_ input: DeleteSmsTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteSmsTemplateResponse > {
        self.client.execute(action: "DeleteSmsTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除短信模板
    ///
    /// ⚠️注意：个人认证用户不支持使用 API 删除短信正文模板，请登录 [控制台](https://console.cloud.tencent.com/smsv2) 删除短信正文模板，如需了解请参阅 [实名认证基本介绍](https://cloud.tencent.com/document/product/378/3629)。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func deleteSmsTemplate(_ input: DeleteSmsTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSmsTemplateResponse {
        try await self.client.execute(action: "DeleteSmsTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteSmsTemplate请求参数结构体
    public struct DeleteSmsTemplateRequest: TCRequestModel {
        /// 待删除的模板 ID。
        public let templateId: UInt64
        
        public init (templateId: UInt64) {
            self.templateId = templateId
        }
        
        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }
    
    /// DeleteSmsTemplate返回参数结构体
    public struct DeleteSmsTemplateResponse: TCResponseModel {
        /// 删除模板响应
        public let deleteTemplateStatus: DeleteTemplateStatus
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case deleteTemplateStatus = "DeleteTemplateStatus"
            case requestId = "RequestId"
        }
    }
}
