//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Apigateway {
    /// DescribePlugin请求参数结构体
    public struct DescribePluginRequest: TCRequestModel {
        /// 要查询的插件ID。
        public let pluginId: String

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        public init(pluginId: String, limit: Int64? = nil, offset: Int64? = nil) {
            self.pluginId = pluginId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case pluginId = "PluginId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribePlugin返回参数结构体
    public struct DescribePluginResponse: TCResponseModel {
        /// 插件详情。
        public let result: Plugin

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询插件详情
    ///
    /// 展示插件详情，支持按照插件ID进行。
    @inlinable
    public func describePlugin(_ input: DescribePluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePluginResponse> {
        self.client.execute(action: "DescribePlugin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询插件详情
    ///
    /// 展示插件详情，支持按照插件ID进行。
    @inlinable
    public func describePlugin(_ input: DescribePluginRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePluginResponse {
        try await self.client.execute(action: "DescribePlugin", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询插件详情
    ///
    /// 展示插件详情，支持按照插件ID进行。
    @inlinable
    public func describePlugin(pluginId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePluginResponse> {
        self.describePlugin(DescribePluginRequest(pluginId: pluginId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询插件详情
    ///
    /// 展示插件详情，支持按照插件ID进行。
    @inlinable
    public func describePlugin(pluginId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePluginResponse {
        try await self.describePlugin(DescribePluginRequest(pluginId: pluginId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
