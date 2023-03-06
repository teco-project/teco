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

extension Tcr {
    /// DescribeApplicationTriggerPersonal请求参数结构体
    public struct DescribeApplicationTriggerPersonalRequest: TCPaginatedRequest {
        /// 仓库名称
        public let repoName: String?

        /// 触发器名称
        public let triggerName: String?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回最大数量，默认 20, 最大值 100
        public let limit: Int64?

        public init(repoName: String? = nil, triggerName: String? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.repoName = repoName
            self.triggerName = triggerName
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
            case triggerName = "TriggerName"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeApplicationTriggerPersonalResponse) -> DescribeApplicationTriggerPersonalRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeApplicationTriggerPersonalRequest(repoName: self.repoName, triggerName: self.triggerName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeApplicationTriggerPersonal返回参数结构体
    public struct DescribeApplicationTriggerPersonalResponse: TCPaginatedResponse {
        /// 触发器列表返回值
        public let data: DescribeApplicationTriggerPersonalResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TriggerResp] {
            self.data.triggerInfo
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data.totalCount
        }
    }

    /// 查询应用更新触发器
    ///
    /// 用于查询应用更新触发器
    @inlinable
    public func describeApplicationTriggerPersonal(_ input: DescribeApplicationTriggerPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationTriggerPersonalResponse> {
        self.client.execute(action: "DescribeApplicationTriggerPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询应用更新触发器
    ///
    /// 用于查询应用更新触发器
    @inlinable
    public func describeApplicationTriggerPersonal(_ input: DescribeApplicationTriggerPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationTriggerPersonalResponse {
        try await self.client.execute(action: "DescribeApplicationTriggerPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询应用更新触发器
    ///
    /// 用于查询应用更新触发器
    @inlinable
    public func describeApplicationTriggerPersonal(repoName: String? = nil, triggerName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationTriggerPersonalResponse> {
        let input = DescribeApplicationTriggerPersonalRequest(repoName: repoName, triggerName: triggerName, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeApplicationTriggerPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询应用更新触发器
    ///
    /// 用于查询应用更新触发器
    @inlinable
    public func describeApplicationTriggerPersonal(repoName: String? = nil, triggerName: String? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationTriggerPersonalResponse {
        let input = DescribeApplicationTriggerPersonalRequest(repoName: repoName, triggerName: triggerName, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeApplicationTriggerPersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询应用更新触发器
    ///
    /// 用于查询应用更新触发器
    @inlinable
    public func describeApplicationTriggerPersonalPaginated(_ input: DescribeApplicationTriggerPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TriggerResp])> {
        self.client.paginate(input: input, region: region, command: self.describeApplicationTriggerPersonal, logger: logger, on: eventLoop)
    }

    /// 查询应用更新触发器
    ///
    /// 用于查询应用更新触发器
    @inlinable
    public func describeApplicationTriggerPersonalPaginated(_ input: DescribeApplicationTriggerPersonalRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeApplicationTriggerPersonalResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeApplicationTriggerPersonal, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询应用更新触发器
    ///
    /// 用于查询应用更新触发器
    @inlinable
    public func describeApplicationTriggerPersonalPaginator(_ input: DescribeApplicationTriggerPersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeApplicationTriggerPersonalRequest, DescribeApplicationTriggerPersonalResponse>.ResultSequence, responses: TCClient.Paginator<DescribeApplicationTriggerPersonalRequest, DescribeApplicationTriggerPersonalResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeApplicationTriggerPersonalRequest, DescribeApplicationTriggerPersonalResponse>.ResultSequence(input: input, region: region, command: self.describeApplicationTriggerPersonal, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeApplicationTriggerPersonalRequest, DescribeApplicationTriggerPersonalResponse>.ResponseSequence(input: input, region: region, command: self.describeApplicationTriggerPersonal, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
