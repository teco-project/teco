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

import TecoCore

extension Sqlserver {
    /// DescribeRollbackTime请求参数结构体
    public struct DescribeRollbackTimeRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 需要查询的数据库列表
        public let dBs: [String]

        public init(instanceId: String, dBs: [String]) {
            self.instanceId = instanceId
            self.dBs = dBs
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dBs = "DBs"
        }
    }

    /// DescribeRollbackTime返回参数结构体
    public struct DescribeRollbackTimeResponse: TCResponseModel {
        /// 数据库可回档实例信息
        public let details: [DbRollbackTimeInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case details = "Details"
            case requestId = "RequestId"
        }
    }

    /// 查询实例可回档时间范围
    ///
    /// 本接口（DescribeRollbackTime）用于查询实例可回档时间范围
    @inlinable
    public func describeRollbackTime(_ input: DescribeRollbackTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRollbackTimeResponse> {
        self.client.execute(action: "DescribeRollbackTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例可回档时间范围
    ///
    /// 本接口（DescribeRollbackTime）用于查询实例可回档时间范围
    @inlinable
    public func describeRollbackTime(_ input: DescribeRollbackTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRollbackTimeResponse {
        try await self.client.execute(action: "DescribeRollbackTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例可回档时间范围
    ///
    /// 本接口（DescribeRollbackTime）用于查询实例可回档时间范围
    @inlinable
    public func describeRollbackTime(instanceId: String, dBs: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRollbackTimeResponse> {
        self.describeRollbackTime(.init(instanceId: instanceId, dBs: dBs), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例可回档时间范围
    ///
    /// 本接口（DescribeRollbackTime）用于查询实例可回档时间范围
    @inlinable
    public func describeRollbackTime(instanceId: String, dBs: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRollbackTimeResponse {
        try await self.describeRollbackTime(.init(instanceId: instanceId, dBs: dBs), region: region, logger: logger, on: eventLoop)
    }
}
