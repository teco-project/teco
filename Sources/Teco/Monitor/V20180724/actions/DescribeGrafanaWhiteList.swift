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

extension Monitor {
    /// DescribeGrafanaWhiteList请求参数结构体
    public struct DescribeGrafanaWhiteListRequest: TCRequestModel {
        /// Grafana 实例 ID，例如：grafana-abcdefgh
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeGrafanaWhiteList返回参数结构体
    public struct DescribeGrafanaWhiteListResponse: TCResponseModel {
        /// 数组
        public let whiteList: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case whiteList = "WhiteList"
            case requestId = "RequestId"
        }
    }

    /// 列出 Grafana 白名单
    @inlinable
    public func describeGrafanaWhiteList(_ input: DescribeGrafanaWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGrafanaWhiteListResponse> {
        self.client.execute(action: "DescribeGrafanaWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出 Grafana 白名单
    @inlinable
    public func describeGrafanaWhiteList(_ input: DescribeGrafanaWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGrafanaWhiteListResponse {
        try await self.client.execute(action: "DescribeGrafanaWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出 Grafana 白名单
    @inlinable
    public func describeGrafanaWhiteList(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGrafanaWhiteListResponse> {
        self.describeGrafanaWhiteList(DescribeGrafanaWhiteListRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 列出 Grafana 白名单
    @inlinable
    public func describeGrafanaWhiteList(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGrafanaWhiteListResponse {
        try await self.describeGrafanaWhiteList(DescribeGrafanaWhiteListRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
