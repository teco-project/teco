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
import TecoPaginationHelpers

extension Smh {
    /// DescribeOfficialInstances请求参数结构体
    public struct DescribeOfficialInstancesRequest: TCPaginatedRequest {
        /// 是否查询实例绑定的超级管理员账号，默认值为 false。
        public let superAdminAccount: Bool?

        /// 按照一个或者多个实例 ID 查询，每次请求的上限为 100 个。
        public let instanceIds: [String]?

        /// 页码，整型，配合 PageSize 使用，默认值为 1。
        public let pageNumber: UInt64?

        /// 每页数目，整型，配合 PageNumber 使用，默认值为 20，最大值为 100。
        public let pageSize: UInt64?

        /// 对指定列进行排序
        public let orderBy: String?

        /// 排序方式
        public let orderByType: String?

        /// 续费管理筛选类型
        public let autoRenew: UInt64?

        /// 超级管理管理员账号是否绑定了手机号
        public let bindPhone: Bool?

        public init(superAdminAccount: Bool? = nil, instanceIds: [String]? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil, autoRenew: UInt64? = nil, bindPhone: Bool? = nil) {
            self.superAdminAccount = superAdminAccount
            self.instanceIds = instanceIds
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.orderBy = orderBy
            self.orderByType = orderByType
            self.autoRenew = autoRenew
            self.bindPhone = bindPhone
        }

        enum CodingKeys: String, CodingKey {
            case superAdminAccount = "SuperAdminAccount"
            case instanceIds = "InstanceIds"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
            case autoRenew = "AutoRenew"
            case bindPhone = "BindPhone"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeOfficialInstancesResponse) -> DescribeOfficialInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeOfficialInstancesRequest(superAdminAccount: self.superAdminAccount, instanceIds: self.instanceIds, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, orderBy: self.orderBy, orderByType: self.orderByType, autoRenew: self.autoRenew, bindPhone: self.bindPhone)
        }
    }

    /// DescribeOfficialInstances返回参数结构体
    public struct DescribeOfficialInstancesResponse: TCPaginatedResponse {
        /// 实例列表
        public let list: [Instance]

        /// 总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case list = "List"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Instance`` list from the paginated response.
        public func getItems() -> [Instance] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询官方实例
    ///
    /// 查询官方云盘实例
    @inlinable
    public func describeOfficialInstances(_ input: DescribeOfficialInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOfficialInstancesResponse> {
        self.client.execute(action: "DescribeOfficialInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询官方实例
    ///
    /// 查询官方云盘实例
    @inlinable
    public func describeOfficialInstances(_ input: DescribeOfficialInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOfficialInstancesResponse {
        try await self.client.execute(action: "DescribeOfficialInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询官方实例
    ///
    /// 查询官方云盘实例
    @inlinable
    public func describeOfficialInstances(superAdminAccount: Bool? = nil, instanceIds: [String]? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil, autoRenew: UInt64? = nil, bindPhone: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOfficialInstancesResponse> {
        self.describeOfficialInstances(.init(superAdminAccount: superAdminAccount, instanceIds: instanceIds, pageNumber: pageNumber, pageSize: pageSize, orderBy: orderBy, orderByType: orderByType, autoRenew: autoRenew, bindPhone: bindPhone), region: region, logger: logger, on: eventLoop)
    }

    /// 查询官方实例
    ///
    /// 查询官方云盘实例
    @inlinable
    public func describeOfficialInstances(superAdminAccount: Bool? = nil, instanceIds: [String]? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil, autoRenew: UInt64? = nil, bindPhone: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOfficialInstancesResponse {
        try await self.describeOfficialInstances(.init(superAdminAccount: superAdminAccount, instanceIds: instanceIds, pageNumber: pageNumber, pageSize: pageSize, orderBy: orderBy, orderByType: orderByType, autoRenew: autoRenew, bindPhone: bindPhone), region: region, logger: logger, on: eventLoop)
    }

    /// 查询官方实例
    ///
    /// 查询官方云盘实例
    @inlinable
    public func describeOfficialInstancesPaginated(_ input: DescribeOfficialInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Instance])> {
        self.client.paginate(input: input, region: region, command: self.describeOfficialInstances, logger: logger, on: eventLoop)
    }

    /// 查询官方实例
    ///
    /// 查询官方云盘实例
    @inlinable @discardableResult
    public func describeOfficialInstancesPaginated(_ input: DescribeOfficialInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeOfficialInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeOfficialInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询官方实例
    ///
    /// 查询官方云盘实例
    ///
    /// - Returns: `AsyncSequence`s of `Instance` and `DescribeOfficialInstancesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeOfficialInstancesPaginator(_ input: DescribeOfficialInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeOfficialInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeOfficialInstances, logger: logger, on: eventLoop)
    }
}
