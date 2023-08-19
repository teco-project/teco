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
    /// DescribeLiveTranscodeTemplates请求参数结构体
    public struct DescribeLiveTranscodeTemplatesRequest: TCRequest {
        public init() {
        }
    }

    /// DescribeLiveTranscodeTemplates返回参数结构体
    public struct DescribeLiveTranscodeTemplatesResponse: TCResponse {
        /// 转码模板列表。
        public let templates: [TemplateInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templates = "Templates"
            case requestId = "RequestId"
        }
    }

    /// 获取转码模板列表
    ///
    /// 获取转码模板列表。
    @inlinable
    public func describeLiveTranscodeTemplates(_ input: DescribeLiveTranscodeTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveTranscodeTemplatesResponse> {
        self.client.execute(action: "DescribeLiveTranscodeTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取转码模板列表
    ///
    /// 获取转码模板列表。
    @inlinable
    public func describeLiveTranscodeTemplates(_ input: DescribeLiveTranscodeTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveTranscodeTemplatesResponse {
        try await self.client.execute(action: "DescribeLiveTranscodeTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取转码模板列表
    ///
    /// 获取转码模板列表。
    @inlinable
    public func describeLiveTranscodeTemplates(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveTranscodeTemplatesResponse> {
        self.describeLiveTranscodeTemplates(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取转码模板列表
    ///
    /// 获取转码模板列表。
    @inlinable
    public func describeLiveTranscodeTemplates(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveTranscodeTemplatesResponse {
        try await self.describeLiveTranscodeTemplates(.init(), region: region, logger: logger, on: eventLoop)
    }
}
