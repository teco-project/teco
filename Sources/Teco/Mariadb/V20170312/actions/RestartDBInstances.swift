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

extension Mariadb {
    /// RestartDBInstances请求参数结构体
    public struct RestartDBInstancesRequest: TCRequest {
        /// 实例ID的数组
        public let instanceIds: [String]

        /// 重启时间
        public let restartTime: String?

        public init(instanceIds: [String], restartTime: String? = nil) {
            self.instanceIds = instanceIds
            self.restartTime = restartTime
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case restartTime = "RestartTime"
        }
    }

    /// RestartDBInstances返回参数结构体
    public struct RestartDBInstancesResponse: TCResponse {
        /// 异步任务ID
        public let flowId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case requestId = "RequestId"
        }
    }

    /// 重启实例
    ///
    /// 本接口（RestartDBInstances）用于重启数据库实例
    @inlinable
    public func restartDBInstances(_ input: RestartDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartDBInstancesResponse> {
        self.client.execute(action: "RestartDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重启实例
    ///
    /// 本接口（RestartDBInstances）用于重启数据库实例
    @inlinable
    public func restartDBInstances(_ input: RestartDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartDBInstancesResponse {
        try await self.client.execute(action: "RestartDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重启实例
    ///
    /// 本接口（RestartDBInstances）用于重启数据库实例
    @inlinable
    public func restartDBInstances(instanceIds: [String], restartTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartDBInstancesResponse> {
        self.restartDBInstances(.init(instanceIds: instanceIds, restartTime: restartTime), region: region, logger: logger, on: eventLoop)
    }

    /// 重启实例
    ///
    /// 本接口（RestartDBInstances）用于重启数据库实例
    @inlinable
    public func restartDBInstances(instanceIds: [String], restartTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartDBInstancesResponse {
        try await self.restartDBInstances(.init(instanceIds: instanceIds, restartTime: restartTime), region: region, logger: logger, on: eventLoop)
    }
}
