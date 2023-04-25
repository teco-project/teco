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

extension Tbaas {
    /// GetClusterListForUser请求参数结构体
    public struct GetClusterListForUserRequest: TCPaginatedRequest {
        /// 模块名，本接口取值：cluster_mng
        public let module: String

        /// 操作名，本接口取值：cluster_list_for_user
        public let operation: String

        /// 返回数据项数，本接口默认取值：10，上限取值：20
        public let limit: UInt64?

        /// 返回数据起始偏移，本接口默认取值：0
        public let offset: UInt64?

        public init(module: String, operation: String, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.module = module
            self.operation = operation
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetClusterListForUserResponse) -> GetClusterListForUserRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetClusterListForUserRequest(module: self.module, operation: self.operation, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// GetClusterListForUser返回参数结构体
    public struct GetClusterListForUserResponse: TCPaginatedResponse {
        /// 网络总数量
        public let totalCount: UInt64

        /// 网络列表
        public let clusterList: [ClusterDetailForUser]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case clusterList = "ClusterList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ClusterDetailForUser] {
            self.clusterList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取网络列表
    ///
    /// 获取该用户的网络列表。网络信息中包含组织信息，但仅包含该用户所在组织的信息。
    @inlinable
    public func getClusterListForUser(_ input: GetClusterListForUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetClusterListForUserResponse> {
        self.client.execute(action: "GetClusterListForUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取网络列表
    ///
    /// 获取该用户的网络列表。网络信息中包含组织信息，但仅包含该用户所在组织的信息。
    @inlinable
    public func getClusterListForUser(_ input: GetClusterListForUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetClusterListForUserResponse {
        try await self.client.execute(action: "GetClusterListForUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取网络列表
    ///
    /// 获取该用户的网络列表。网络信息中包含组织信息，但仅包含该用户所在组织的信息。
    @inlinable
    public func getClusterListForUser(module: String, operation: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetClusterListForUserResponse> {
        self.getClusterListForUser(.init(module: module, operation: operation, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取网络列表
    ///
    /// 获取该用户的网络列表。网络信息中包含组织信息，但仅包含该用户所在组织的信息。
    @inlinable
    public func getClusterListForUser(module: String, operation: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetClusterListForUserResponse {
        try await self.getClusterListForUser(.init(module: module, operation: operation, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取网络列表
    ///
    /// 获取该用户的网络列表。网络信息中包含组织信息，但仅包含该用户所在组织的信息。
    @inlinable
    public func getClusterListForUserPaginated(_ input: GetClusterListForUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ClusterDetailForUser])> {
        self.client.paginate(input: input, region: region, command: self.getClusterListForUser, logger: logger, on: eventLoop)
    }

    /// 获取网络列表
    ///
    /// 获取该用户的网络列表。网络信息中包含组织信息，但仅包含该用户所在组织的信息。
    @inlinable @discardableResult
    public func getClusterListForUserPaginated(_ input: GetClusterListForUserRequest, region: TCRegion? = nil, onResponse: @escaping (GetClusterListForUserResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getClusterListForUser, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取网络列表
    ///
    /// 获取该用户的网络列表。网络信息中包含组织信息，但仅包含该用户所在组织的信息。
    ///
    /// - Returns: `AsyncSequence`s of `ClusterDetailForUser` and `GetClusterListForUserResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func getClusterListForUserPaginator(_ input: GetClusterListForUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetClusterListForUserRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getClusterListForUser, logger: logger, on: eventLoop)
    }
}
