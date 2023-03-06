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
    /// DescribeDeviceGroupMembers请求参数结构体
    public struct DescribeDeviceGroupMembersRequest: TCPaginatedRequest {
        /// 资产组ID
        public let id: UInt64

        /// true - 查询已在该资产组的资产，false - 查询未在该资产组的资产
        public let bound: Bool

        /// 资产名或资产IP，模糊查询
        public let name: String?

        /// 分页偏移位置，默认值为0
        public let offset: UInt64?

        /// 每页条目数，默认20, 最大500
        public let limit: UInt64?

        /// 资产类型，1 - Linux，2 - Windows，3 - MySQL，4 - SQLServer
        public let kind: UInt64?

        /// 所属部门ID
        public let departmentId: String?

        /// 过滤条件，可按照标签键、标签进行过滤。如果同时指定标签键和标签过滤条件，它们之间为“AND”的关系
        public let tagFilters: [TagFilter]?

        public init(id: UInt64, bound: Bool, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, kind: UInt64? = nil, departmentId: String? = nil, tagFilters: [TagFilter]? = nil) {
            self.id = id
            self.bound = bound
            self.name = name
            self.offset = offset
            self.limit = limit
            self.kind = kind
            self.departmentId = departmentId
            self.tagFilters = tagFilters
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case bound = "Bound"
            case name = "Name"
            case offset = "Offset"
            case limit = "Limit"
            case kind = "Kind"
            case departmentId = "DepartmentId"
            case tagFilters = "TagFilters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeDeviceGroupMembersResponse) -> DescribeDeviceGroupMembersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDeviceGroupMembersRequest(id: self.id, bound: self.bound, name: self.name, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, kind: self.kind, departmentId: self.departmentId, tagFilters: self.tagFilters)
        }
    }

    /// DescribeDeviceGroupMembers返回参数结构体
    public struct DescribeDeviceGroupMembersResponse: TCPaginatedResponse {
        /// 资产组成员总数
        public let totalCount: UInt64

        /// 资产组成员列表
        public let deviceSet: [Device]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case deviceSet = "DeviceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Device] {
            self.deviceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询资产组成员列表
    @inlinable
    public func describeDeviceGroupMembers(_ input: DescribeDeviceGroupMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceGroupMembersResponse> {
        self.client.execute(action: "DescribeDeviceGroupMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资产组成员列表
    @inlinable
    public func describeDeviceGroupMembers(_ input: DescribeDeviceGroupMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceGroupMembersResponse {
        try await self.client.execute(action: "DescribeDeviceGroupMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资产组成员列表
    @inlinable
    public func describeDeviceGroupMembers(id: UInt64, bound: Bool, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, kind: UInt64? = nil, departmentId: String? = nil, tagFilters: [TagFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceGroupMembersResponse> {
        let input = DescribeDeviceGroupMembersRequest(id: id, bound: bound, name: name, offset: offset, limit: limit, kind: kind, departmentId: departmentId, tagFilters: tagFilters)
        return self.client.execute(action: "DescribeDeviceGroupMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资产组成员列表
    @inlinable
    public func describeDeviceGroupMembers(id: UInt64, bound: Bool, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, kind: UInt64? = nil, departmentId: String? = nil, tagFilters: [TagFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceGroupMembersResponse {
        let input = DescribeDeviceGroupMembersRequest(id: id, bound: bound, name: name, offset: offset, limit: limit, kind: kind, departmentId: departmentId, tagFilters: tagFilters)
        return try await self.client.execute(action: "DescribeDeviceGroupMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资产组成员列表
    @inlinable
    public func describeDeviceGroupMembersPaginated(_ input: DescribeDeviceGroupMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Device])> {
        self.client.paginate(input: input, region: region, command: self.describeDeviceGroupMembers, logger: logger, on: eventLoop)
    }

    /// 查询资产组成员列表
    @inlinable
    public func describeDeviceGroupMembersPaginated(_ input: DescribeDeviceGroupMembersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDeviceGroupMembersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDeviceGroupMembers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询资产组成员列表
    @inlinable
    public func describeDeviceGroupMembersPaginator(_ input: DescribeDeviceGroupMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeDeviceGroupMembersRequest, DescribeDeviceGroupMembersResponse>.ResultSequence, responses: TCClient.Paginator<DescribeDeviceGroupMembersRequest, DescribeDeviceGroupMembersResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeDeviceGroupMembersRequest, DescribeDeviceGroupMembersResponse>.ResultSequence(input: input, region: region, command: self.describeDeviceGroupMembers, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeDeviceGroupMembersRequest, DescribeDeviceGroupMembersResponse>.ResponseSequence(input: input, region: region, command: self.describeDeviceGroupMembers, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
