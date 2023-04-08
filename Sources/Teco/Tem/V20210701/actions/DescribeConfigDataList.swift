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

extension Tem {
    /// DescribeConfigDataList请求参数结构体
    public struct DescribeConfigDataListRequest: TCPaginatedRequest {
        /// 环境 ID
        public let environmentId: String

        /// 来源渠道
        public let sourceChannel: Int64?

        /// 查询游标
        public let continueToken: String?

        /// 分页 limit
        public let limit: Int64?

        public init(environmentId: String, sourceChannel: Int64? = nil, continueToken: String? = nil, limit: Int64? = nil) {
            self.environmentId = environmentId
            self.sourceChannel = sourceChannel
            self.continueToken = continueToken
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case sourceChannel = "SourceChannel"
            case continueToken = "ContinueToken"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeConfigDataListResponse) -> DescribeConfigDataListRequest? {
            guard response.result.continueToken != nil else {
                return nil
            }
            return DescribeConfigDataListRequest(environmentId: self.environmentId, sourceChannel: self.sourceChannel, continueToken: response.result.continueToken, limit: self.limit)
        }
    }

    /// DescribeConfigDataList返回参数结构体
    public struct DescribeConfigDataListResponse: TCPaginatedResponse {
        /// 配置列表
        public let result: DescribeConfigDataListPage

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ConfigData] {
            self.result.records
        }
    }

    /// 查询配置列表
    @inlinable
    public func describeConfigDataList(_ input: DescribeConfigDataListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigDataListResponse> {
        self.client.execute(action: "DescribeConfigDataList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询配置列表
    @inlinable
    public func describeConfigDataList(_ input: DescribeConfigDataListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigDataListResponse {
        try await self.client.execute(action: "DescribeConfigDataList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询配置列表
    @inlinable
    public func describeConfigDataList(environmentId: String, sourceChannel: Int64? = nil, continueToken: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConfigDataListResponse> {
        self.describeConfigDataList(.init(environmentId: environmentId, sourceChannel: sourceChannel, continueToken: continueToken, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询配置列表
    @inlinable
    public func describeConfigDataList(environmentId: String, sourceChannel: Int64? = nil, continueToken: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConfigDataListResponse {
        try await self.describeConfigDataList(.init(environmentId: environmentId, sourceChannel: sourceChannel, continueToken: continueToken, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询配置列表
    @inlinable
    public func describeConfigDataListPaginated(_ input: DescribeConfigDataListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [ConfigData])> {
        self.client.paginate(input: input, region: region, command: self.describeConfigDataList, logger: logger, on: eventLoop)
    }

    /// 查询配置列表
    @inlinable @discardableResult
    public func describeConfigDataListPaginated(_ input: DescribeConfigDataListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeConfigDataListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeConfigDataList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询配置列表
    ///
    /// - Returns: `AsyncSequence`s of `ConfigData` and `DescribeConfigDataListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeConfigDataListPaginator(_ input: DescribeConfigDataListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeConfigDataListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeConfigDataList, logger: logger, on: eventLoop)
    }
}
