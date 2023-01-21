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

extension Dbdc {
    /// DescribeHostList请求参数结构体
    public struct DescribeHostListRequest: TCRequestModel {
        /// 独享集群实例Id
        public let instanceId: String

        /// 分页返回数量
        public let limit: Int64?

        /// 分页偏移量
        public let offset: Int64?

        /// 分配状态过滤，0-可分配，1-禁止分配
        public let assignStatus: [Int64]?

        public init(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, assignStatus: [Int64]? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
            self.assignStatus = assignStatus
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
            case assignStatus = "AssignStatus"
        }
    }

    /// DescribeHostList返回参数结构体
    public struct DescribeHostListResponse: TCResponseModel {
        /// 主机总数
        public let totalCount: Int64

        /// 主机详情
        public let hosts: [HostDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case hosts = "Hosts"
            case requestId = "RequestId"
        }
    }

    /// 查询主机列表
    ///
    /// 本接口用于查询主机列表
    @inlinable
    public func describeHostList(_ input: DescribeHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostListResponse> {
        self.client.execute(action: "DescribeHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询主机列表
    ///
    /// 本接口用于查询主机列表
    @inlinable
    public func describeHostList(_ input: DescribeHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostListResponse {
        try await self.client.execute(action: "DescribeHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询主机列表
    ///
    /// 本接口用于查询主机列表
    @inlinable
    public func describeHostList(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, assignStatus: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostListResponse> {
        self.describeHostList(DescribeHostListRequest(instanceId: instanceId, limit: limit, offset: offset, assignStatus: assignStatus), region: region, logger: logger, on: eventLoop)
    }

    /// 查询主机列表
    ///
    /// 本接口用于查询主机列表
    @inlinable
    public func describeHostList(instanceId: String, limit: Int64? = nil, offset: Int64? = nil, assignStatus: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostListResponse {
        try await self.describeHostList(DescribeHostListRequest(instanceId: instanceId, limit: limit, offset: offset, assignStatus: assignStatus), region: region, logger: logger, on: eventLoop)
    }
}
