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
    /// DescribeLiveCallbackTemplates请求参数结构体
    public struct DescribeLiveCallbackTemplatesRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeLiveCallbackTemplates返回参数结构体
    public struct DescribeLiveCallbackTemplatesResponse: TCResponseModel {
        /// 模板信息列表。
        public let templates: [CallBackTemplateInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templates = "Templates"
            case requestId = "RequestId"
        }
    }

    /// 获取回调模板列表
    @inlinable
    public func describeLiveCallbackTemplates(_ input: DescribeLiveCallbackTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveCallbackTemplatesResponse> {
        self.client.execute(action: "DescribeLiveCallbackTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取回调模板列表
    @inlinable
    public func describeLiveCallbackTemplates(_ input: DescribeLiveCallbackTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveCallbackTemplatesResponse {
        try await self.client.execute(action: "DescribeLiveCallbackTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取回调模板列表
    @inlinable
    public func describeLiveCallbackTemplates(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveCallbackTemplatesResponse> {
        self.describeLiveCallbackTemplates(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取回调模板列表
    @inlinable
    public func describeLiveCallbackTemplates(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveCallbackTemplatesResponse {
        try await self.describeLiveCallbackTemplates(.init(), region: region, logger: logger, on: eventLoop)
    }
}
