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
    /// DescribeSmsTemplateList请求参数结构体
    public struct DescribeSmsTemplateListRequest: TCRequestModel {
        /// 是否国际/港澳台短信：
        /// 0：表示国内短信。
        /// 1：表示国际/港澳台短信。
        public let international: UInt64

        /// 模板 ID 数组。数组为空时默认查询模板列表信息（仅允许主账号使用），请使用 Limit 和 Offset 字段设置查询范围。
        /// <dx-alert infotype="notice" title="注意">默认数组长度最大100</dx-alert>
        public let templateIdSet: [UInt64]?

        /// 最大上限，最多100。
        /// 注：默认为0，TemplateIdSet 为空时启用。
        public let limit: UInt64?

        /// 偏移量。
        /// 注：默认为0，TemplateIdSet 为空时启用。
        public let offset: UInt64?

        public init(international: UInt64, templateIdSet: [UInt64]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.international = international
            self.templateIdSet = templateIdSet
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case international = "International"
            case templateIdSet = "TemplateIdSet"
            case limit = "Limit"
            case offset = "Offset"
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
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func describeSmsTemplateList(_ input: DescribeSmsTemplateListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSmsTemplateListResponse> {
        self.client.execute(action: "DescribeSmsTemplateList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 短信模板状态查询
    ///
    /// ⚠️注意：个人认证用户不支持使用 API 查询短信正文模板，请参阅了解 [实名认证基本介绍](https://cloud.tencent.com/document/product/378/3629)。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func describeSmsTemplateList(_ input: DescribeSmsTemplateListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmsTemplateListResponse {
        try await self.client.execute(action: "DescribeSmsTemplateList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 短信模板状态查询
    ///
    /// ⚠️注意：个人认证用户不支持使用 API 查询短信正文模板，请参阅了解 [实名认证基本介绍](https://cloud.tencent.com/document/product/378/3629)。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func describeSmsTemplateList(international: UInt64, templateIdSet: [UInt64]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSmsTemplateListResponse> {
        self.describeSmsTemplateList(DescribeSmsTemplateListRequest(international: international, templateIdSet: templateIdSet, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 短信模板状态查询
    ///
    /// ⚠️注意：个人认证用户不支持使用 API 查询短信正文模板，请参阅了解 [实名认证基本介绍](https://cloud.tencent.com/document/product/378/3629)。
    /// >- 注：由于云 **API3.0 安全性**有所提升，所以**接口鉴权**较为复杂，建议使用 SDK 来使用云短信服务。
    /// >- 您可以在 [API 3.0 Explorer](https://console.cloud.tencent.com/api/explorer?Product=sms&Version=2021-01-11&Action=SendSms) 中直接运行该接口，可以先免去签名计算步骤。运行成功后，API Explorer可以**自动生成**SDK代码示例。
    @inlinable
    public func describeSmsTemplateList(international: UInt64, templateIdSet: [UInt64]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSmsTemplateListResponse {
        try await self.describeSmsTemplateList(DescribeSmsTemplateListRequest(international: international, templateIdSet: templateIdSet, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
