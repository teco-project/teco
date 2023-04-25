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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Tcb {
    /// DescribeCloudBaseProjectVersionList请求参数结构体
    public struct DescribeCloudBaseProjectVersionListRequest: TCPaginatedRequest {
        /// 环境id
        public let envId: String

        /// 项目名称
        public let projectName: String

        /// 页大小
        public let pageSize: UInt64?

        /// 第几页,从0开始
        public let pageNum: UInt64?

        /// 起始时间 2021-03-27 12:00:00
        public let startTime: String?

        /// 终止时间 2021-03-27 12:00:00
        public let endTime: String?

        public init(envId: String, projectName: String, pageSize: UInt64? = nil, pageNum: UInt64? = nil, startTime: String? = nil, endTime: String? = nil) {
            self.envId = envId
            self.projectName = projectName
            self.pageSize = pageSize
            self.pageNum = pageNum
            self.startTime = startTime
            self.endTime = endTime
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case projectName = "ProjectName"
            case pageSize = "PageSize"
            case pageNum = "PageNum"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCloudBaseProjectVersionListResponse) -> DescribeCloudBaseProjectVersionListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCloudBaseProjectVersionListRequest(envId: self.envId, projectName: self.projectName, pageSize: self.pageSize, pageNum: (self.pageNum ?? 0) + 1, startTime: self.startTime, endTime: self.endTime)
        }
    }

    /// DescribeCloudBaseProjectVersionList返回参数结构体
    public struct DescribeCloudBaseProjectVersionListResponse: TCPaginatedResponse {
        /// 版本列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectVersions: [CloudBaseProjectVersion]?

        /// 总个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case projectVersions = "ProjectVersions"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CloudBaseProjectVersion] {
            self.projectVersions ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 云项目部署版本列表
    ///
    /// 云项目部署列表
    @inlinable
    public func describeCloudBaseProjectVersionList(_ input: DescribeCloudBaseProjectVersionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudBaseProjectVersionListResponse> {
        self.client.execute(action: "DescribeCloudBaseProjectVersionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云项目部署版本列表
    ///
    /// 云项目部署列表
    @inlinable
    public func describeCloudBaseProjectVersionList(_ input: DescribeCloudBaseProjectVersionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseProjectVersionListResponse {
        try await self.client.execute(action: "DescribeCloudBaseProjectVersionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云项目部署版本列表
    ///
    /// 云项目部署列表
    @inlinable
    public func describeCloudBaseProjectVersionList(envId: String, projectName: String, pageSize: UInt64? = nil, pageNum: UInt64? = nil, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudBaseProjectVersionListResponse> {
        self.describeCloudBaseProjectVersionList(.init(envId: envId, projectName: projectName, pageSize: pageSize, pageNum: pageNum, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 云项目部署版本列表
    ///
    /// 云项目部署列表
    @inlinable
    public func describeCloudBaseProjectVersionList(envId: String, projectName: String, pageSize: UInt64? = nil, pageNum: UInt64? = nil, startTime: String? = nil, endTime: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudBaseProjectVersionListResponse {
        try await self.describeCloudBaseProjectVersionList(.init(envId: envId, projectName: projectName, pageSize: pageSize, pageNum: pageNum, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 云项目部署版本列表
    ///
    /// 云项目部署列表
    @inlinable
    public func describeCloudBaseProjectVersionListPaginated(_ input: DescribeCloudBaseProjectVersionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CloudBaseProjectVersion])> {
        self.client.paginate(input: input, region: region, command: self.describeCloudBaseProjectVersionList, logger: logger, on: eventLoop)
    }

    /// 云项目部署版本列表
    ///
    /// 云项目部署列表
    @inlinable @discardableResult
    public func describeCloudBaseProjectVersionListPaginated(_ input: DescribeCloudBaseProjectVersionListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCloudBaseProjectVersionListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCloudBaseProjectVersionList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 云项目部署版本列表
    ///
    /// 云项目部署列表
    ///
    /// - Returns: `AsyncSequence`s of `CloudBaseProjectVersion` and `DescribeCloudBaseProjectVersionListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCloudBaseProjectVersionListPaginator(_ input: DescribeCloudBaseProjectVersionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCloudBaseProjectVersionListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCloudBaseProjectVersionList, logger: logger, on: eventLoop)
    }
}
