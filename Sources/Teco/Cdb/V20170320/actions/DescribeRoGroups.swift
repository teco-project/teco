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

extension Cdb {
    /// DescribeRoGroups请求参数结构体
    public struct DescribeRoGroupsRequest: TCRequestModel {
        /// 实例ID，格式如：cdb-c1nl9rpv或者cdb-c1nl9rpv，与云数据库控制台页面中显示的实例ID相同。
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeRoGroups返回参数结构体
    public struct DescribeRoGroupsResponse: TCResponseModel {
        /// RO组信息数组，一个实例可关联多个RO组。
        public let roGroups: [RoGroup]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case roGroups = "RoGroups"
            case requestId = "RequestId"
        }
    }

    /// 查询云数据库实例的所有RO组的信息
    ///
    /// 本接口(DescribeRoGroups)用于查询云数据库实例的所有的RO组的信息。
    @inlinable
    public func describeRoGroups(_ input: DescribeRoGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRoGroupsResponse> {
        self.client.execute(action: "DescribeRoGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云数据库实例的所有RO组的信息
    ///
    /// 本接口(DescribeRoGroups)用于查询云数据库实例的所有的RO组的信息。
    @inlinable
    public func describeRoGroups(_ input: DescribeRoGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoGroupsResponse {
        try await self.client.execute(action: "DescribeRoGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云数据库实例的所有RO组的信息
    ///
    /// 本接口(DescribeRoGroups)用于查询云数据库实例的所有的RO组的信息。
    @inlinable
    public func describeRoGroups(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRoGroupsResponse> {
        self.describeRoGroups(DescribeRoGroupsRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云数据库实例的所有RO组的信息
    ///
    /// 本接口(DescribeRoGroups)用于查询云数据库实例的所有的RO组的信息。
    @inlinable
    public func describeRoGroups(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRoGroupsResponse {
        try await self.describeRoGroups(DescribeRoGroupsRequest(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
