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

extension Tbaas {
    /// GetChannelListForUser请求参数结构体
    public struct GetChannelListForUserRequest: TCPaginatedRequest {
        /// 模块名，本接口取值：channel_mng
        public let module: String

        /// 操作名，本接口取值：channel_list_for_user
        public let operation: String

        /// 区块链网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String

        /// 组织名称
        public let groupName: String

        /// 返回数据项数，本接口默认取值：10，上限取值：20
        public let limit: UInt64?

        /// 返回数据起始偏移，本接口默认取值：0
        public let offset: UInt64?

        public init(module: String, operation: String, clusterId: String, groupName: String, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.module = module
            self.operation = operation
            self.clusterId = clusterId
            self.groupName = groupName
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case clusterId = "ClusterId"
            case groupName = "GroupName"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetChannelListForUserResponse) -> GetChannelListForUserRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetChannelListForUserRequest(module: self.module, operation: self.operation, clusterId: self.clusterId, groupName: self.groupName, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// GetChannelListForUser返回参数结构体
    public struct GetChannelListForUserResponse: TCPaginatedResponse {
        /// 通道总数量
        public let totalCount: UInt64

        /// 通道列表
        public let channelList: [ChannelDetailForUser]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case channelList = "ChannelList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ChannelDetailForUser] {
            self.channelList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取通道列表
    @inlinable
    public func getChannelListForUser(_ input: GetChannelListForUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetChannelListForUserResponse> {
        self.client.execute(action: "GetChannelListForUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取通道列表
    @inlinable
    public func getChannelListForUser(_ input: GetChannelListForUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetChannelListForUserResponse {
        try await self.client.execute(action: "GetChannelListForUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取通道列表
    @inlinable
    public func getChannelListForUser(module: String, operation: String, clusterId: String, groupName: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetChannelListForUserResponse> {
        let input = GetChannelListForUserRequest(module: module, operation: operation, clusterId: clusterId, groupName: groupName, limit: limit, offset: offset)
        return self.client.execute(action: "GetChannelListForUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取通道列表
    @inlinable
    public func getChannelListForUser(module: String, operation: String, clusterId: String, groupName: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetChannelListForUserResponse {
        let input = GetChannelListForUserRequest(module: module, operation: operation, clusterId: clusterId, groupName: groupName, limit: limit, offset: offset)
        return try await self.client.execute(action: "GetChannelListForUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取通道列表
    @inlinable
    public func getChannelListForUserPaginated(_ input: GetChannelListForUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ChannelDetailForUser])> {
        self.client.paginate(input: input, region: region, command: self.getChannelListForUser, logger: logger, on: eventLoop)
    }

    /// 获取通道列表
    @inlinable @discardableResult
    public func getChannelListForUserPaginated(_ input: GetChannelListForUserRequest, region: TCRegion? = nil, onResponse: @escaping (GetChannelListForUserResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getChannelListForUser, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取通道列表
    ///
    /// - Returns: `AsyncSequence`s of `ChannelDetailForUser` and `GetChannelListForUserResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func getChannelListForUserPaginator(_ input: GetChannelListForUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetChannelListForUserRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getChannelListForUser, logger: logger, on: eventLoop)
    }
}
