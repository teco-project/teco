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
    /// DescribeMaintenanceSpan请求参数结构体
    public struct DescribeMaintenanceSpanRequest: TCRequestModel {
        /// 实例ID，形如mssql-k8voqdlz
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeMaintenanceSpan返回参数结构体
    public struct DescribeMaintenanceSpanResponse: TCResponseModel {
        /// 以周为单位，表示周几允许维护，例如：[1,2,3,4,5,6,7]表示周一到周日均为可维护日。
        public let weekly: [Int64]

        /// 每天可维护的开始时间，例如：10:24标识可维护时间窗10点24分开始。
        public let startTime: String

        /// 每天可维护的持续时间，单位是h，例如：1 表示从可维护的开始时间起持续1小时。
        public let span: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case weekly = "Weekly"
            case startTime = "StartTime"
            case span = "Span"
            case requestId = "RequestId"
        }
    }

    /// 查询该实例的可维护时间窗
    ///
    /// 本接口（DescribeMaintenanceSpan）根据实例ID查询该实例的可维护时间窗。
    @inlinable
    public func describeMaintenanceSpan(_ input: DescribeMaintenanceSpanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMaintenanceSpanResponse> {
        self.client.execute(action: "DescribeMaintenanceSpan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询该实例的可维护时间窗
    ///
    /// 本接口（DescribeMaintenanceSpan）根据实例ID查询该实例的可维护时间窗。
    @inlinable
    public func describeMaintenanceSpan(_ input: DescribeMaintenanceSpanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMaintenanceSpanResponse {
        try await self.client.execute(action: "DescribeMaintenanceSpan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询该实例的可维护时间窗
    ///
    /// 本接口（DescribeMaintenanceSpan）根据实例ID查询该实例的可维护时间窗。
    @inlinable
    public func describeMaintenanceSpan(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMaintenanceSpanResponse> {
        self.describeMaintenanceSpan(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询该实例的可维护时间窗
    ///
    /// 本接口（DescribeMaintenanceSpan）根据实例ID查询该实例的可维护时间窗。
    @inlinable
    public func describeMaintenanceSpan(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMaintenanceSpanResponse {
        try await self.describeMaintenanceSpan(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
