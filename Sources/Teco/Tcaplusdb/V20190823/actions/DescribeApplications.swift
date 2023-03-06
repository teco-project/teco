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

extension Tcaplusdb {
    /// DescribeApplications请求参数结构体
    public struct DescribeApplicationsRequest: TCPaginatedRequest {
        /// 集群ID，用于获取指定集群的单据
        public let clusterId: String?

        /// 分页，限制当前返回多少条记录，大于等于10
        public let limit: UInt64?

        /// 分页，从多少条数据开始返回
        public let offset: UInt64?

        /// 申请单状态，用于过滤，0-待审核 1-已经审核并提交任务 2-已驳回
        public let censorStatus: Int64?

        /// 表格组id，用于过滤
        public let tableGroupId: String?

        /// 表格名，用于过滤
        public let tableName: String?

        /// 申请人uin，用于过滤
        public let applicant: String?

        /// 申请类型，用于过滤，0加表 1删除表 2清理表 3修改表 4表重建 5存储层扩缩容 6接入层扩缩容 7复制表数据 8key回档
        public let applyType: Int64?

        public init(clusterId: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, censorStatus: Int64? = nil, tableGroupId: String? = nil, tableName: String? = nil, applicant: String? = nil, applyType: Int64? = nil) {
            self.clusterId = clusterId
            self.limit = limit
            self.offset = offset
            self.censorStatus = censorStatus
            self.tableGroupId = tableGroupId
            self.tableName = tableName
            self.applicant = applicant
            self.applyType = applyType
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case limit = "Limit"
            case offset = "Offset"
            case censorStatus = "CensorStatus"
            case tableGroupId = "TableGroupId"
            case tableName = "TableName"
            case applicant = "Applicant"
            case applyType = "ApplyType"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeApplicationsResponse) -> DescribeApplicationsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeApplicationsRequest(clusterId: self.clusterId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), censorStatus: self.censorStatus, tableGroupId: self.tableGroupId, tableName: self.tableName, applicant: self.applicant, applyType: self.applyType)
        }
    }

    /// DescribeApplications返回参数结构体
    public struct DescribeApplicationsResponse: TCPaginatedResponse {
        /// 申请单列表
        public let applications: [Application]

        /// 申请单个数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case applications = "Applications"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Application] {
            self.applications
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取审批管理的申请单
    @inlinable
    public func describeApplications(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationsResponse> {
        self.client.execute(action: "DescribeApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取审批管理的申请单
    @inlinable
    public func describeApplications(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationsResponse {
        try await self.client.execute(action: "DescribeApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取审批管理的申请单
    @inlinable
    public func describeApplications(clusterId: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, censorStatus: Int64? = nil, tableGroupId: String? = nil, tableName: String? = nil, applicant: String? = nil, applyType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationsResponse> {
        let input = DescribeApplicationsRequest(clusterId: clusterId, limit: limit, offset: offset, censorStatus: censorStatus, tableGroupId: tableGroupId, tableName: tableName, applicant: applicant, applyType: applyType)
        return self.client.execute(action: "DescribeApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取审批管理的申请单
    @inlinable
    public func describeApplications(clusterId: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, censorStatus: Int64? = nil, tableGroupId: String? = nil, tableName: String? = nil, applicant: String? = nil, applyType: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationsResponse {
        let input = DescribeApplicationsRequest(clusterId: clusterId, limit: limit, offset: offset, censorStatus: censorStatus, tableGroupId: tableGroupId, tableName: tableName, applicant: applicant, applyType: applyType)
        return try await self.client.execute(action: "DescribeApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取审批管理的申请单
    @inlinable
    public func describeApplicationsPaginated(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Application])> {
        self.client.paginate(input: input, region: region, command: self.describeApplications, logger: logger, on: eventLoop)
    }

    /// 获取审批管理的申请单
    @inlinable @discardableResult
    public func describeApplicationsPaginated(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeApplicationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeApplications, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取审批管理的申请单
    ///
    /// - Returns: `AsyncSequence`s of `Application` and `DescribeApplicationsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeApplicationsPaginator(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeApplicationsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeApplications, logger: logger, on: eventLoop)
    }
}
