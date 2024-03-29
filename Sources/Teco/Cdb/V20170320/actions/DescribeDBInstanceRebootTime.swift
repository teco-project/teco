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
    /// DescribeDBInstanceRebootTime请求参数结构体
    public struct DescribeDBInstanceRebootTimeRequest: TCRequest {
        /// 实例的 ID，格式如：cdb-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceIds: [String]

        public init(instanceIds: [String]) {
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }

    /// DescribeDBInstanceRebootTime返回参数结构体
    public struct DescribeDBInstanceRebootTimeResponse: TCResponse {
        /// 符合查询条件的实例总数。
        public let totalCount: Int64

        /// 返回的参数信息。
        public let items: [InstanceRebootTime]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 查询云数据库实例的预期重启时间
    ///
    /// 本接口(DescribeDBInstanceRebootTime)用于查询云数据库实例重启预计所需的时间。
    @inlinable
    public func describeDBInstanceRebootTime(_ input: DescribeDBInstanceRebootTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstanceRebootTimeResponse> {
        self.client.execute(action: "DescribeDBInstanceRebootTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云数据库实例的预期重启时间
    ///
    /// 本接口(DescribeDBInstanceRebootTime)用于查询云数据库实例重启预计所需的时间。
    @inlinable
    public func describeDBInstanceRebootTime(_ input: DescribeDBInstanceRebootTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceRebootTimeResponse {
        try await self.client.execute(action: "DescribeDBInstanceRebootTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云数据库实例的预期重启时间
    ///
    /// 本接口(DescribeDBInstanceRebootTime)用于查询云数据库实例重启预计所需的时间。
    @inlinable
    public func describeDBInstanceRebootTime(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBInstanceRebootTimeResponse> {
        self.describeDBInstanceRebootTime(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云数据库实例的预期重启时间
    ///
    /// 本接口(DescribeDBInstanceRebootTime)用于查询云数据库实例重启预计所需的时间。
    @inlinable
    public func describeDBInstanceRebootTime(instanceIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBInstanceRebootTimeResponse {
        try await self.describeDBInstanceRebootTime(.init(instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }
}
