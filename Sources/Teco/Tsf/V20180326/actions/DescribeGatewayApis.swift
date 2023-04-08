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

extension Tsf {
    /// DescribeGatewayApis请求参数结构体
    public struct DescribeGatewayApisRequest: TCPaginatedRequest {
        /// 分组ID
        public let groupId: String

        /// 翻页偏移量
        public let offset: Int64

        /// 每页的记录数
        public let limit: Int64

        /// 搜索关键字，支持 API path
        public let searchWord: String?

        /// 部署组ID
        public let gatewayDeployGroupId: String?

        public init(groupId: String, offset: Int64, limit: Int64, searchWord: String? = nil, gatewayDeployGroupId: String? = nil) {
            self.groupId = groupId
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
            self.gatewayDeployGroupId = gatewayDeployGroupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
            case gatewayDeployGroupId = "GatewayDeployGroupId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeGatewayApisResponse) -> DescribeGatewayApisRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeGatewayApisRequest(groupId: self.groupId, offset: self.offset + .init(response.getItems().count), limit: self.limit, searchWord: self.searchWord, gatewayDeployGroupId: self.gatewayDeployGroupId)
        }
    }

    /// DescribeGatewayApis返回参数结构体
    public struct DescribeGatewayApisResponse: TCPaginatedResponse {
        /// 翻页结构
        public let result: TsfPageApiDetailInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ApiDetailInfo] {
            self.result.content
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询API分组下的Api列表信息
    @inlinable
    public func describeGatewayApis(_ input: DescribeGatewayApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewayApisResponse> {
        self.client.execute(action: "DescribeGatewayApis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询API分组下的Api列表信息
    @inlinable
    public func describeGatewayApis(_ input: DescribeGatewayApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayApisResponse {
        try await self.client.execute(action: "DescribeGatewayApis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询API分组下的Api列表信息
    @inlinable
    public func describeGatewayApis(groupId: String, offset: Int64, limit: Int64, searchWord: String? = nil, gatewayDeployGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGatewayApisResponse> {
        self.describeGatewayApis(.init(groupId: groupId, offset: offset, limit: limit, searchWord: searchWord, gatewayDeployGroupId: gatewayDeployGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询API分组下的Api列表信息
    @inlinable
    public func describeGatewayApis(groupId: String, offset: Int64, limit: Int64, searchWord: String? = nil, gatewayDeployGroupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGatewayApisResponse {
        try await self.describeGatewayApis(.init(groupId: groupId, offset: offset, limit: limit, searchWord: searchWord, gatewayDeployGroupId: gatewayDeployGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询API分组下的Api列表信息
    @inlinable
    public func describeGatewayApisPaginated(_ input: DescribeGatewayApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ApiDetailInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeGatewayApis, logger: logger, on: eventLoop)
    }

    /// 查询API分组下的Api列表信息
    @inlinable @discardableResult
    public func describeGatewayApisPaginated(_ input: DescribeGatewayApisRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGatewayApisResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeGatewayApis, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询API分组下的Api列表信息
    ///
    /// - Returns: `AsyncSequence`s of `ApiDetailInfo` and `DescribeGatewayApisResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeGatewayApisPaginator(_ input: DescribeGatewayApisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeGatewayApisRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeGatewayApis, logger: logger, on: eventLoop)
    }
}
