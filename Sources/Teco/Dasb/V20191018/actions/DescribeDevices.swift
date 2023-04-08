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
import TecoPaginationHelpers

extension Dasb {
    /// DescribeDevices请求参数结构体
    public struct DescribeDevicesRequest: TCPaginatedRequest {
        /// 资产ID集合
        public let idSet: [UInt64]?

        /// 资产名或资产IP，模糊查询
        public let name: String?

        /// 暂未使用
        public let ip: String?

        /// 地域码集合
        public let apCodeSet: [String]?

        /// 操作系统类型, 1 - Linux, 2 - Windows, 3 - MySQL, 4 - SQLServer
        public let kind: UInt64?

        /// 分页偏移位置，默认值为0
        public let offset: UInt64?

        /// 每页条目数量，默认20
        public let limit: UInt64?

        /// 有该资产访问权限的用户ID集合
        public let authorizedUserIdSet: [UInt64]?

        /// 过滤条件，资产绑定的堡垒机服务ID集合
        public let resourceIdSet: [String]?

        /// 可提供按照多种类型过滤, 1 - Linux, 2 - Windows, 3 - MySQL, 4 - SQLServer
        public let kindSet: [UInt64]?

        /// 过滤条件，可按照部门ID进行过滤
        public let departmentId: String?

        /// 过滤条件，可按照标签键、标签进行过滤。如果同时指定标签键和标签过滤条件，它们之间为“AND”的关系
        public let tagFilters: [TagFilter]?

        /// 过滤数组。支持的Name：
        /// BindingStatus 绑定状态
        public let filters: [Filter]?

        public init(idSet: [UInt64]? = nil, name: String? = nil, ip: String? = nil, apCodeSet: [String]? = nil, kind: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, authorizedUserIdSet: [UInt64]? = nil, resourceIdSet: [String]? = nil, kindSet: [UInt64]? = nil, departmentId: String? = nil, tagFilters: [TagFilter]? = nil, filters: [Filter]? = nil) {
            self.idSet = idSet
            self.name = name
            self.ip = ip
            self.apCodeSet = apCodeSet
            self.kind = kind
            self.offset = offset
            self.limit = limit
            self.authorizedUserIdSet = authorizedUserIdSet
            self.resourceIdSet = resourceIdSet
            self.kindSet = kindSet
            self.departmentId = departmentId
            self.tagFilters = tagFilters
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case idSet = "IdSet"
            case name = "Name"
            case ip = "Ip"
            case apCodeSet = "ApCodeSet"
            case kind = "Kind"
            case offset = "Offset"
            case limit = "Limit"
            case authorizedUserIdSet = "AuthorizedUserIdSet"
            case resourceIdSet = "ResourceIdSet"
            case kindSet = "KindSet"
            case departmentId = "DepartmentId"
            case tagFilters = "TagFilters"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDevicesResponse) -> DescribeDevicesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDevicesRequest(idSet: self.idSet, name: self.name, ip: self.ip, apCodeSet: self.apCodeSet, kind: self.kind, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, authorizedUserIdSet: self.authorizedUserIdSet, resourceIdSet: self.resourceIdSet, kindSet: self.kindSet, departmentId: self.departmentId, tagFilters: self.tagFilters, filters: self.filters)
        }
    }

    /// DescribeDevices返回参数结构体
    public struct DescribeDevicesResponse: TCPaginatedResponse {
        /// 资产总数
        public let totalCount: UInt64

        /// 资产信息列表
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

    /// 查询资产列表
    @inlinable
    public func describeDevices(_ input: DescribeDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicesResponse> {
        self.client.execute(action: "DescribeDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资产列表
    @inlinable
    public func describeDevices(_ input: DescribeDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicesResponse {
        try await self.client.execute(action: "DescribeDevices", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资产列表
    @inlinable
    public func describeDevices(idSet: [UInt64]? = nil, name: String? = nil, ip: String? = nil, apCodeSet: [String]? = nil, kind: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, authorizedUserIdSet: [UInt64]? = nil, resourceIdSet: [String]? = nil, kindSet: [UInt64]? = nil, departmentId: String? = nil, tagFilters: [TagFilter]? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicesResponse> {
        self.describeDevices(.init(idSet: idSet, name: name, ip: ip, apCodeSet: apCodeSet, kind: kind, offset: offset, limit: limit, authorizedUserIdSet: authorizedUserIdSet, resourceIdSet: resourceIdSet, kindSet: kindSet, departmentId: departmentId, tagFilters: tagFilters, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资产列表
    @inlinable
    public func describeDevices(idSet: [UInt64]? = nil, name: String? = nil, ip: String? = nil, apCodeSet: [String]? = nil, kind: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, authorizedUserIdSet: [UInt64]? = nil, resourceIdSet: [String]? = nil, kindSet: [UInt64]? = nil, departmentId: String? = nil, tagFilters: [TagFilter]? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicesResponse {
        try await self.describeDevices(.init(idSet: idSet, name: name, ip: ip, apCodeSet: apCodeSet, kind: kind, offset: offset, limit: limit, authorizedUserIdSet: authorizedUserIdSet, resourceIdSet: resourceIdSet, kindSet: kindSet, departmentId: departmentId, tagFilters: tagFilters, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资产列表
    @inlinable
    public func describeDevicesPaginated(_ input: DescribeDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Device])> {
        self.client.paginate(input: input, region: region, command: self.describeDevices, logger: logger, on: eventLoop)
    }

    /// 查询资产列表
    @inlinable @discardableResult
    public func describeDevicesPaginated(_ input: DescribeDevicesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDevicesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDevices, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询资产列表
    ///
    /// - Returns: `AsyncSequence`s of `Device` and `DescribeDevicesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDevicesPaginator(_ input: DescribeDevicesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDevicesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDevices, logger: logger, on: eventLoop)
    }
}
