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

extension Ssl {
    /// DescribeManagers请求参数结构体
    public struct DescribeManagersRequest: TCPaginatedRequest {
        /// 公司ID
        public let companyId: Int64

        /// 分页偏移量
        public let offset: Int64?

        /// 分页每页数量
        public let limit: Int64?

        /// 管理人姓名（将废弃），请使用SearchKey
        public let managerName: String?

        /// 模糊查询管理人邮箱（将废弃），请使用SearchKey
        public let managerMail: String?

        /// 根据管理人状态进行筛选，取值有
        /// 'none' 未提交审核
        /// 'audit', 亚信审核中
        /// 'CAaudit' CA审核中
        /// 'ok' 已审核
        /// 'invalid'  审核失败
        /// 'expiring'  即将过期
        /// 'expired' 已过期
        public let status: String?

        /// 管理人姓/管理人名/邮箱/部门精准匹配
        public let searchKey: String?

        public init(companyId: Int64, offset: Int64? = nil, limit: Int64? = nil, managerName: String? = nil, managerMail: String? = nil, status: String? = nil, searchKey: String? = nil) {
            self.companyId = companyId
            self.offset = offset
            self.limit = limit
            self.managerName = managerName
            self.managerMail = managerMail
            self.status = status
            self.searchKey = searchKey
        }

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case offset = "Offset"
            case limit = "Limit"
            case managerName = "ManagerName"
            case managerMail = "ManagerMail"
            case status = "Status"
            case searchKey = "SearchKey"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeManagersResponse) -> DescribeManagersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(companyId: self.companyId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, managerName: self.managerName, managerMail: self.managerMail, status: self.status, searchKey: self.searchKey)
        }
    }

    /// DescribeManagers返回参数结构体
    public struct DescribeManagersResponse: TCPaginatedResponse {
        /// 公司管理人列表
        public let managers: [ManagerInfo]

        /// 公司管理人总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case managers = "Managers"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ManagerInfo`` list from the paginated response.
        public func getItems() -> [ManagerInfo] {
            self.managers
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询管理人列表
    @inlinable
    public func describeManagers(_ input: DescribeManagersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeManagersResponse> {
        self.client.execute(action: "DescribeManagers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询管理人列表
    @inlinable
    public func describeManagers(_ input: DescribeManagersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeManagersResponse {
        try await self.client.execute(action: "DescribeManagers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询管理人列表
    @inlinable
    public func describeManagers(companyId: Int64, offset: Int64? = nil, limit: Int64? = nil, managerName: String? = nil, managerMail: String? = nil, status: String? = nil, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeManagersResponse> {
        self.describeManagers(.init(companyId: companyId, offset: offset, limit: limit, managerName: managerName, managerMail: managerMail, status: status, searchKey: searchKey), region: region, logger: logger, on: eventLoop)
    }

    /// 查询管理人列表
    @inlinable
    public func describeManagers(companyId: Int64, offset: Int64? = nil, limit: Int64? = nil, managerName: String? = nil, managerMail: String? = nil, status: String? = nil, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeManagersResponse {
        try await self.describeManagers(.init(companyId: companyId, offset: offset, limit: limit, managerName: managerName, managerMail: managerMail, status: status, searchKey: searchKey), region: region, logger: logger, on: eventLoop)
    }

    /// 查询管理人列表
    @inlinable
    public func describeManagersPaginated(_ input: DescribeManagersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ManagerInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeManagers, logger: logger, on: eventLoop)
    }

    /// 查询管理人列表
    @inlinable @discardableResult
    public func describeManagersPaginated(_ input: DescribeManagersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeManagersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeManagers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询管理人列表
    ///
    /// - Returns: `AsyncSequence`s of ``ManagerInfo`` and ``DescribeManagersResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeManagersPaginator(_ input: DescribeManagersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeManagersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeManagers, logger: logger, on: eventLoop)
    }
}
