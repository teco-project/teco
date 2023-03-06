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

import TecoPaginationHelpers

extension Dasb {
    /// DescribeDeviceGroups请求参数结构体
    public struct DescribeDeviceGroupsRequest: TCPaginatedRequest {
        /// 资产组ID集合
        public let idSet: [UInt64]?

        /// 资产组名，最长64个字符，模糊查询
        public let name: String?

        /// 分页偏移位置，默认值为0
        public let offset: UInt64?

        /// 每页条目数量，缺省20，最大500
        public let limit: UInt64?

        /// 部门ID，用于过滤属于某个部门的资产组
        public let departmentId: String?

        public init(idSet: [UInt64]? = nil, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, departmentId: String? = nil) {
            self.idSet = idSet
            self.name = name
            self.offset = offset
            self.limit = limit
            self.departmentId = departmentId
        }

        enum CodingKeys: String, CodingKey {
            case idSet = "IdSet"
            case name = "Name"
            case offset = "Offset"
            case limit = "Limit"
            case departmentId = "DepartmentId"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeDeviceGroupsResponse) -> DescribeDeviceGroupsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDeviceGroupsRequest(idSet: self.idSet, name: self.name, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, departmentId: self.departmentId)
        }
    }

    /// DescribeDeviceGroups返回参数结构体
    public struct DescribeDeviceGroupsResponse: TCPaginatedResponse {
        /// 资产组总数
        public let totalCount: UInt64

        /// 资产组列表
        public let groupSet: [Group]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case groupSet = "GroupSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Group] {
            self.groupSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询资产组列表
    @inlinable
    public func describeDeviceGroups(_ input: DescribeDeviceGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceGroupsResponse> {
        self.client.execute(action: "DescribeDeviceGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资产组列表
    @inlinable
    public func describeDeviceGroups(_ input: DescribeDeviceGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceGroupsResponse {
        try await self.client.execute(action: "DescribeDeviceGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资产组列表
    @inlinable
    public func describeDeviceGroups(idSet: [UInt64]? = nil, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceGroupsResponse> {
        let input = DescribeDeviceGroupsRequest(idSet: idSet, name: name, offset: offset, limit: limit, departmentId: departmentId)
        return self.client.execute(action: "DescribeDeviceGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资产组列表
    @inlinable
    public func describeDeviceGroups(idSet: [UInt64]? = nil, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceGroupsResponse {
        let input = DescribeDeviceGroupsRequest(idSet: idSet, name: name, offset: offset, limit: limit, departmentId: departmentId)
        return try await self.client.execute(action: "DescribeDeviceGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资产组列表
    @inlinable
    public func describeDeviceGroupsPaginated(_ input: DescribeDeviceGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Group])> {
        self.client.paginate(input: input, region: region, command: self.describeDeviceGroups, logger: logger, on: eventLoop)
    }

    /// 查询资产组列表
    @inlinable @discardableResult
    public func describeDeviceGroupsPaginated(_ input: DescribeDeviceGroupsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDeviceGroupsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDeviceGroups, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询资产组列表
    @inlinable
    public func describeDeviceGroupsPaginator(_ input: DescribeDeviceGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeDeviceGroupsRequest, DescribeDeviceGroupsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeDeviceGroupsRequest, DescribeDeviceGroupsResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDeviceGroups, logger: logger, on: eventLoop)
    }
}
