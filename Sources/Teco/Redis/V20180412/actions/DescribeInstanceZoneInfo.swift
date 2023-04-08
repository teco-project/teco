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

extension Redis {
    /// DescribeInstanceZoneInfo请求参数结构体
    public struct DescribeInstanceZoneInfoRequest: TCRequestModel {
        /// 实例Id，如：crs-6ubhgouj
        public let instanceId: String?

        public init(instanceId: String? = nil) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeInstanceZoneInfo返回参数结构体
    public struct DescribeInstanceZoneInfoResponse: TCResponseModel {
        /// 实例节点组的个数
        public let totalCount: Int64

        /// 实例节点组列表
        public let replicaGroups: [ReplicaGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case replicaGroups = "ReplicaGroups"
            case requestId = "RequestId"
        }
    }

    /// 查询Redis节点详细信息
    @inlinable
    public func describeInstanceZoneInfo(_ input: DescribeInstanceZoneInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceZoneInfoResponse> {
        self.client.execute(action: "DescribeInstanceZoneInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Redis节点详细信息
    @inlinable
    public func describeInstanceZoneInfo(_ input: DescribeInstanceZoneInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceZoneInfoResponse {
        try await self.client.execute(action: "DescribeInstanceZoneInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Redis节点详细信息
    @inlinable
    public func describeInstanceZoneInfo(instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceZoneInfoResponse> {
        self.describeInstanceZoneInfo(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Redis节点详细信息
    @inlinable
    public func describeInstanceZoneInfo(instanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceZoneInfoResponse {
        try await self.describeInstanceZoneInfo(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
