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

import Logging
import NIOCore
import TecoCore

extension Sms {
    /// DescribeSmsTemplateList请求参数结构体
    public struct DescribeSmsTemplateListRequest: TCRequestModel {
        /// 模板 ID 数组。
        public let templateIdSet: [UInt64]

        /// 是否国际/港澳台短信：
        /// 0：表示国内短信。
        /// 1：表示国际/港澳台短信。
        public let international: UInt64

        public init(templateIdSet: [UInt64], international: UInt64) {
            self.templateIdSet = templateIdSet
            self.international = international
        }

        enum CodingKeys: String, CodingKey {
            case templateIdSet = "TemplateIdSet"
            case international = "International"
        }
    }

    /// DescribeSmsTemplateList返回参数结构体
    public struct DescribeSmsTemplateListResponse: TCResponseModel {
        /// 获取短信模板信息响应
        public let describeTemplateStatusSet: [DescribeTemplateListStatus]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case describeTemplateStatusSet = "DescribeTemplateStatusSet"
            case requestId = "RequestId"
        }
    }

    /// 短信模板状态查询
    ///
    /// ⚠️注意：个人认证用户不支持使用 API 查询短信正文模板，请参阅了解 [实名认证基本介绍](https://cloud.tencent.com/document/product/378/3629)。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func describeSmsTemplateList(_ input: DescribeSmsTemplateListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSmsTemplateListResponse> {
        self.client.execute(action: "DescribeSmsTemplateList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 短信模板状态查询
    ///
    /// ⚠️注意：个人认证用户不支持使用 API 查询短信正文模板，请参阅了解 [实名认证基本介绍](https://cloud.tencent.com/document/product/378/3629)。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func describeSmsTemplateList(_ input: DescribeSmsTemplateListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmsTemplateListResponse {
        try await self.client.execute(action: "DescribeSmsTemplateList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 短信模板状态查询
    ///
    /// ⚠️注意：个人认证用户不支持使用 API 查询短信正文模板，请参阅了解 [实名认证基本介绍](https://cloud.tencent.com/document/product/378/3629)。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func describeSmsTemplateList(templateIdSet: [UInt64], international: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSmsTemplateListResponse> {
        self.describeSmsTemplateList(.init(templateIdSet: templateIdSet, international: international), region: region, logger: logger, on: eventLoop)
    }

    /// 短信模板状态查询
    ///
    /// ⚠️注意：个人认证用户不支持使用 API 查询短信正文模板，请参阅了解 [实名认证基本介绍](https://cloud.tencent.com/document/product/378/3629)。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 [SDK](https://cloud.tencent.com/document/product/382/43193) 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2019-07-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func describeSmsTemplateList(templateIdSet: [UInt64], international: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmsTemplateListResponse {
        try await self.describeSmsTemplateList(.init(templateIdSet: templateIdSet, international: international), region: region, logger: logger, on: eventLoop)
    }
}
