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

extension Tke {
    /// DescribePrometheusTemplateSync请求参数结构体
    public struct DescribePrometheusTemplateSyncRequest: TCRequestModel {
        /// 模板ID
        public let templateId: String

        public init(templateId: String) {
            self.templateId = templateId
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
        }
    }

    /// DescribePrometheusTemplateSync返回参数结构体
    public struct DescribePrometheusTemplateSyncResponse: TCResponseModel {
        /// 同步目标详情
        public let targets: [PrometheusTemplateSyncTarget]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case targets = "Targets"
            case requestId = "RequestId"
        }
    }

    /// 获取模板同步信息
    @inlinable
    public func describePrometheusTemplateSync(_ input: DescribePrometheusTemplateSyncRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusTemplateSyncResponse> {
        self.client.execute(action: "DescribePrometheusTemplateSync", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取模板同步信息
    @inlinable
    public func describePrometheusTemplateSync(_ input: DescribePrometheusTemplateSyncRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusTemplateSyncResponse {
        try await self.client.execute(action: "DescribePrometheusTemplateSync", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取模板同步信息
    @inlinable
    public func describePrometheusTemplateSync(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusTemplateSyncResponse> {
        self.describePrometheusTemplateSync(DescribePrometheusTemplateSyncRequest(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取模板同步信息
    @inlinable
    public func describePrometheusTemplateSync(templateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusTemplateSyncResponse {
        try await self.describePrometheusTemplateSync(DescribePrometheusTemplateSyncRequest(templateId: templateId), region: region, logger: logger, on: eventLoop)
    }
}
