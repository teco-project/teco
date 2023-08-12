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

extension Tcss {
    /// DescribeCompliancePeriodTaskList请求参数结构体
    public struct DescribeCompliancePeriodTaskListRequest: TCPaginatedRequest {
        /// 资产的类型，取值为：
        /// ASSET_CONTAINER, 容器
        /// ASSET_IMAGE, 镜像
        /// ASSET_HOST, 主机
        /// ASSET_K8S, K8S资产
        public let assetType: String?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 需要返回的数量，默认为10，最大值为100。
        public let limit: UInt64?

        public init(assetType: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.assetType = assetType
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case assetType = "AssetType"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCompliancePeriodTaskListResponse) -> DescribeCompliancePeriodTaskListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCompliancePeriodTaskListRequest(assetType: self.assetType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeCompliancePeriodTaskList返回参数结构体
    public struct DescribeCompliancePeriodTaskListResponse: TCPaginatedResponse {
        /// 定时任务的总量。
        public let totalCount: UInt64

        /// 定时任务信息的列表
        public let periodTaskSet: [CompliancePeriodTask]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case periodTaskSet = "PeriodTaskSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CompliancePeriodTask`` list from the paginated response.
        public func getItems() -> [CompliancePeriodTask] {
            self.periodTaskSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 安全合规查询定时任务列表
    ///
    /// 查询合规检测的定时任务列表
    @inlinable
    public func describeCompliancePeriodTaskList(_ input: DescribeCompliancePeriodTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCompliancePeriodTaskListResponse> {
        self.client.execute(action: "DescribeCompliancePeriodTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全合规查询定时任务列表
    ///
    /// 查询合规检测的定时任务列表
    @inlinable
    public func describeCompliancePeriodTaskList(_ input: DescribeCompliancePeriodTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCompliancePeriodTaskListResponse {
        try await self.client.execute(action: "DescribeCompliancePeriodTaskList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全合规查询定时任务列表
    ///
    /// 查询合规检测的定时任务列表
    @inlinable
    public func describeCompliancePeriodTaskList(assetType: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCompliancePeriodTaskListResponse> {
        self.describeCompliancePeriodTaskList(.init(assetType: assetType, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 安全合规查询定时任务列表
    ///
    /// 查询合规检测的定时任务列表
    @inlinable
    public func describeCompliancePeriodTaskList(assetType: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCompliancePeriodTaskListResponse {
        try await self.describeCompliancePeriodTaskList(.init(assetType: assetType, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 安全合规查询定时任务列表
    ///
    /// 查询合规检测的定时任务列表
    @inlinable
    public func describeCompliancePeriodTaskListPaginated(_ input: DescribeCompliancePeriodTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CompliancePeriodTask])> {
        self.client.paginate(input: input, region: region, command: self.describeCompliancePeriodTaskList, logger: logger, on: eventLoop)
    }

    /// 安全合规查询定时任务列表
    ///
    /// 查询合规检测的定时任务列表
    @inlinable @discardableResult
    public func describeCompliancePeriodTaskListPaginated(_ input: DescribeCompliancePeriodTaskListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCompliancePeriodTaskListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCompliancePeriodTaskList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 安全合规查询定时任务列表
    ///
    /// 查询合规检测的定时任务列表
    ///
    /// - Returns: `AsyncSequence`s of `CompliancePeriodTask` and `DescribeCompliancePeriodTaskListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCompliancePeriodTaskListPaginator(_ input: DescribeCompliancePeriodTaskListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCompliancePeriodTaskListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCompliancePeriodTaskList, logger: logger, on: eventLoop)
    }
}
