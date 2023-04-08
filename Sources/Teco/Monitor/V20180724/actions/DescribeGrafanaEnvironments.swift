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

extension Monitor {
    /// DescribeGrafanaEnvironments请求参数结构体
    public struct DescribeGrafanaEnvironmentsRequest: TCRequestModel {
        /// Grafana 实例 ID，例如：grafana-abcdefgh
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeGrafanaEnvironments返回参数结构体
    public struct DescribeGrafanaEnvironmentsResponse: TCResponseModel {
        /// 环境变量字符串
        public let envs: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case envs = "Envs"
            case requestId = "RequestId"
        }
    }

    /// 列出 Grafana 环境变量
    @inlinable
    public func describeGrafanaEnvironments(_ input: DescribeGrafanaEnvironmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGrafanaEnvironmentsResponse> {
        self.client.execute(action: "DescribeGrafanaEnvironments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出 Grafana 环境变量
    @inlinable
    public func describeGrafanaEnvironments(_ input: DescribeGrafanaEnvironmentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGrafanaEnvironmentsResponse {
        try await self.client.execute(action: "DescribeGrafanaEnvironments", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出 Grafana 环境变量
    @inlinable
    public func describeGrafanaEnvironments(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGrafanaEnvironmentsResponse> {
        self.describeGrafanaEnvironments(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 列出 Grafana 环境变量
    @inlinable
    public func describeGrafanaEnvironments(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGrafanaEnvironmentsResponse {
        try await self.describeGrafanaEnvironments(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
