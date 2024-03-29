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
    /// TerminatePrometheusInstances请求参数结构体
    public struct TerminatePrometheusInstancesRequest: TCRequest {
        /// 实例 ID 列表
        public let instanceIds: [String]

        public init(instanceIds: [String]) {
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }

    /// TerminatePrometheusInstances返回参数结构体
    public struct TerminatePrometheusInstancesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 销毁按量 Prometheus 实例
    @inlinable @discardableResult
    public func terminatePrometheusInstances(_ input: TerminatePrometheusInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminatePrometheusInstancesResponse> {
        self.client.execute(action: "TerminatePrometheusInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 销毁按量 Prometheus 实例
    @inlinable @discardableResult
    public func terminatePrometheusInstances(_ input: TerminatePrometheusInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminatePrometheusInstancesResponse {
        try await self.client.execute(action: "TerminatePrometheusInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 销毁按量 Prometheus 实例
    @inlinable @discardableResult
    public func terminatePrometheusInstances(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminatePrometheusInstancesResponse> {
        self.terminatePrometheusInstances(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 销毁按量 Prometheus 实例
    @inlinable @discardableResult
    public func terminatePrometheusInstances(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminatePrometheusInstancesResponse {
        try await self.terminatePrometheusInstances(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
