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

extension Live {
    /// DescribeLiveCallbackTemplate请求参数结构体
    public struct DescribeLiveCallbackTemplateRequest: TCRequestModel {
        /// 模板 ID。
        /// 1. 在创建回调模板接口 [CreateLiveCallbackTemplate](/document/product/267/32637) 调用的返回值中获取模板 ID。
        /// 2. 可以从接口 [DescribeLiveCallbackTemplates](/document/product/267/32632) 查询已经创建的过的模板列表。
        public let templateId: Int64

        public init(templateId: Int64) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DescribeLiveCallbackTemplate返回参数结构体
    public struct DescribeLiveCallbackTemplateResponse: TCResponseModel {
        /// 回调模板信息。
        public let template: CallBackTemplateInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case template = "Template"
            case requestId = "RequestId"
        }
    }

    /// 获取单个回调模板
    ///
    /// 获取单个回调模板。
    @inlinable
    public func describeLiveCallbackTemplate(_ input: DescribeLiveCallbackTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveCallbackTemplateResponse> {
        self.client.execute(action: "DescribeLiveCallbackTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取单个回调模板
    ///
    /// 获取单个回调模板。
    @inlinable
    public func describeLiveCallbackTemplate(_ input: DescribeLiveCallbackTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveCallbackTemplateResponse {
        try await self.client.execute(action: "DescribeLiveCallbackTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取单个回调模板
    ///
    /// 获取单个回调模板。
    @inlinable
    public func describeLiveCallbackTemplate(templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveCallbackTemplateResponse> {
        self.describeLiveCallbackTemplate(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取单个回调模板
    ///
    /// 获取单个回调模板。
    @inlinable
    public func describeLiveCallbackTemplate(templateId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveCallbackTemplateResponse {
        try await self.describeLiveCallbackTemplate(.init(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
