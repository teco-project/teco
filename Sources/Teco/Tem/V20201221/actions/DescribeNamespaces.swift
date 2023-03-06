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
    /// DescribeNamespaces请求参数结构体
    public struct DescribeNamespacesRequest: TCPaginatedRequest {
        /// 分页limit
        public let limit: Int64?

        /// 分页下标
        public let offset: Int64?

        /// 来源source
        public let sourceChannel: Int64?

        public init(limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil) {
            self.limit = limit
            self.offset = offset
            self.sourceChannel = sourceChannel
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case sourceChannel = "SourceChannel"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeNamespacesResponse) -> DescribeNamespacesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNamespacesRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), sourceChannel: self.sourceChannel)
        }
    }

    /// DescribeNamespaces返回参数结构体
    public struct DescribeNamespacesResponse: TCPaginatedResponse {
        /// 返回结果
        public let result: NamespacePage

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TemNamespaceInfo] {
            self.result.records
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.total
        }
    }

    /// 获取租户命名空间列表
    ///
    /// 获取租户环境列表
    @inlinable
    public func describeNamespaces(_ input: DescribeNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNamespacesResponse> {
        self.client.execute(action: "DescribeNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取租户命名空间列表
    ///
    /// 获取租户环境列表
    @inlinable
    public func describeNamespaces(_ input: DescribeNamespacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNamespacesResponse {
        try await self.client.execute(action: "DescribeNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取租户命名空间列表
    ///
    /// 获取租户环境列表
    @inlinable
    public func describeNamespaces(limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNamespacesResponse> {
        let input = DescribeNamespacesRequest(limit: limit, offset: offset, sourceChannel: sourceChannel)
        return self.client.execute(action: "DescribeNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取租户命名空间列表
    ///
    /// 获取租户环境列表
    @inlinable
    public func describeNamespaces(limit: Int64? = nil, offset: Int64? = nil, sourceChannel: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNamespacesResponse {
        let input = DescribeNamespacesRequest(limit: limit, offset: offset, sourceChannel: sourceChannel)
        return try await self.client.execute(action: "DescribeNamespaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
