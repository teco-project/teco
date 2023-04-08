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

extension Iecp {
    /// DescribeApplications请求参数结构体
    public struct DescribeApplicationsRequest: TCPaginatedRequest {
        /// 模糊搜索字符串
        public let namePattern: String?

        /// 默认 0
        public let offset: UInt64?

        /// 默认 20
        public let limit: UInt64?

        /// 仅支持对 DistributeTime 字段排序，ASC/DESC
        public let sort: [FieldSort]?

        public init(namePattern: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, sort: [FieldSort]? = nil) {
            self.namePattern = namePattern
            self.offset = offset
            self.limit = limit
            self.sort = sort
        }

        enum CodingKeys: String, CodingKey {
            case namePattern = "NamePattern"
            case offset = "Offset"
            case limit = "Limit"
            case sort = "Sort"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeApplicationsResponse) -> DescribeApplicationsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeApplicationsRequest(namePattern: self.namePattern, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, sort: self.sort)
        }
    }

    /// DescribeApplications返回参数结构体
    public struct DescribeApplicationsResponse: TCPaginatedResponse {
        /// 总条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 详细列表
        public let applicationSet: [ApplicationTemplate]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case applicationSet = "ApplicationSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ApplicationTemplate] {
            self.applicationSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取应用模板列表
    @inlinable
    public func describeApplications(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationsResponse> {
        self.client.execute(action: "DescribeApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取应用模板列表
    @inlinable
    public func describeApplications(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationsResponse {
        try await self.client.execute(action: "DescribeApplications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取应用模板列表
    @inlinable
    public func describeApplications(namePattern: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, sort: [FieldSort]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationsResponse> {
        self.describeApplications(.init(namePattern: namePattern, offset: offset, limit: limit, sort: sort), region: region, logger: logger, on: eventLoop)
    }

    /// 获取应用模板列表
    @inlinable
    public func describeApplications(namePattern: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, sort: [FieldSort]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationsResponse {
        try await self.describeApplications(.init(namePattern: namePattern, offset: offset, limit: limit, sort: sort), region: region, logger: logger, on: eventLoop)
    }

    /// 获取应用模板列表
    @inlinable
    public func describeApplicationsPaginated(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ApplicationTemplate])> {
        self.client.paginate(input: input, region: region, command: self.describeApplications, logger: logger, on: eventLoop)
    }

    /// 获取应用模板列表
    @inlinable @discardableResult
    public func describeApplicationsPaginated(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeApplicationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeApplications, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取应用模板列表
    ///
    /// - Returns: `AsyncSequence`s of `ApplicationTemplate` and `DescribeApplicationsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeApplicationsPaginator(_ input: DescribeApplicationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeApplicationsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeApplications, logger: logger, on: eventLoop)
    }
}
