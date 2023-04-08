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

extension Cdb {
    /// ReleaseIsolatedDBInstances请求参数结构体
    public struct ReleaseIsolatedDBInstancesRequest: TCRequestModel {
        /// 实例 ID 数组，单个实例 ID 格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        public let instanceIds: [String]

        public init(instanceIds: [String]) {
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }

    /// ReleaseIsolatedDBInstances返回参数结构体
    public struct ReleaseIsolatedDBInstancesResponse: TCResponseModel {
        /// 解隔离操作的结果集。
        public let items: [ReleaseResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 解隔离云数据库实例
    ///
    /// 本接口（ReleaseIsolatedDBInstances）用于恢复已隔离云数据库实例。
    @inlinable
    public func releaseIsolatedDBInstances(_ input: ReleaseIsolatedDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseIsolatedDBInstancesResponse> {
        self.client.execute(action: "ReleaseIsolatedDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解隔离云数据库实例
    ///
    /// 本接口（ReleaseIsolatedDBInstances）用于恢复已隔离云数据库实例。
    @inlinable
    public func releaseIsolatedDBInstances(_ input: ReleaseIsolatedDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseIsolatedDBInstancesResponse {
        try await self.client.execute(action: "ReleaseIsolatedDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解隔离云数据库实例
    ///
    /// 本接口（ReleaseIsolatedDBInstances）用于恢复已隔离云数据库实例。
    @inlinable
    public func releaseIsolatedDBInstances(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ReleaseIsolatedDBInstancesResponse> {
        self.releaseIsolatedDBInstances(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 解隔离云数据库实例
    ///
    /// 本接口（ReleaseIsolatedDBInstances）用于恢复已隔离云数据库实例。
    @inlinable
    public func releaseIsolatedDBInstances(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleaseIsolatedDBInstancesResponse {
        try await self.releaseIsolatedDBInstances(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
