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

extension Cloudhsm {
    /// DescribeVpc请求参数结构体
    public struct DescribeVpcRequest: TCPaginatedRequest {
        /// 返回偏移量。Offset最小为0。
        public let offset: Int64

        /// 返回数量。Limit需要在[1, 100]之间。
        public let limit: Int64

        /// 搜索关键字
        public let searchWord: String?

        public init(offset: Int64, limit: Int64, searchWord: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.searchWord = searchWord
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case searchWord = "SearchWord"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVpcResponse) -> DescribeVpcRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), self.offset + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: self.offset + .init(response.getItems().count), limit: self.limit, searchWord: self.searchWord)
        }
    }

    /// DescribeVpc返回参数结构体
    public struct DescribeVpcResponse: TCPaginatedResponse {
        /// 可查询到的所有Vpc实例总数。
        public let totalCount: Int64

        /// Vpc对象列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vpcList: [Vpc]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case vpcList = "VpcList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Vpc`` list from the paginated response.
        public func getItems() -> [Vpc] {
            self.vpcList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询私有网络列表
    ///
    /// 查询用户的私有网络列表
    @inlinable
    public func describeVpc(_ input: DescribeVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcResponse> {
        self.client.execute(action: "DescribeVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询私有网络列表
    ///
    /// 查询用户的私有网络列表
    @inlinable
    public func describeVpc(_ input: DescribeVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcResponse {
        try await self.client.execute(action: "DescribeVpc", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询私有网络列表
    ///
    /// 查询用户的私有网络列表
    @inlinable
    public func describeVpc(offset: Int64, limit: Int64, searchWord: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcResponse> {
        self.describeVpc(.init(offset: offset, limit: limit, searchWord: searchWord), region: region, logger: logger, on: eventLoop)
    }

    /// 查询私有网络列表
    ///
    /// 查询用户的私有网络列表
    @inlinable
    public func describeVpc(offset: Int64, limit: Int64, searchWord: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcResponse {
        try await self.describeVpc(.init(offset: offset, limit: limit, searchWord: searchWord), region: region, logger: logger, on: eventLoop)
    }

    /// 查询私有网络列表
    ///
    /// 查询用户的私有网络列表
    @inlinable
    public func describeVpcPaginated(_ input: DescribeVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Vpc])> {
        self.client.paginate(input: input, region: region, command: self.describeVpc, logger: logger, on: eventLoop)
    }

    /// 查询私有网络列表
    ///
    /// 查询用户的私有网络列表
    @inlinable @discardableResult
    public func describeVpcPaginated(_ input: DescribeVpcRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVpcResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVpc, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询私有网络列表
    ///
    /// 查询用户的私有网络列表
    ///
    /// - Returns: `AsyncSequence`s of ``Vpc`` and ``DescribeVpcResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVpcPaginator(_ input: DescribeVpcRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVpcRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVpc, logger: logger, on: eventLoop)
    }
}
