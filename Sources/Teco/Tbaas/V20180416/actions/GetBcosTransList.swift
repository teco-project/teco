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
    /// GetBcosTransList请求参数结构体
    public struct GetBcosTransListRequest: TCPaginatedRequest {
        /// 网络ID，可在区块链网络详情或列表中获取
        public let clusterId: String

        /// 群组编号，可在群组列表中获取
        public let groupId: Int64

        /// 当前页数，默认是1
        public let pageNumber: Int64?

        /// 每页记录数，默认为10
        public let pageSize: Int64?

        /// 区块高度，可以从InvokeBcosTrans接口的返回值中解析获取
        public let blockNumber: Int64?

        /// 交易哈希，可以从InvokeBcosTrans接口的返回值中解析获取
        public let transHash: String?

        public init(clusterId: String, groupId: Int64, pageNumber: Int64? = nil, pageSize: Int64? = nil, blockNumber: Int64? = nil, transHash: String? = nil) {
            self.clusterId = clusterId
            self.groupId = groupId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.blockNumber = blockNumber
            self.transHash = transHash
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case groupId = "GroupId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case blockNumber = "BlockNumber"
            case transHash = "TransHash"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: GetBcosTransListResponse) -> GetBcosTransListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetBcosTransListRequest(clusterId: self.clusterId, groupId: self.groupId, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, blockNumber: self.blockNumber, transHash: self.transHash)
        }
    }

    /// GetBcosTransList返回参数结构体
    public struct GetBcosTransListResponse: TCPaginatedResponse {
        /// 总记录数
        public let totalCount: Int64

        /// 返回数据列表
        public let list: [BcosTransInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BcosTransInfo] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 分页查询Bcos交易列表
    ///
    /// Bcos分页查询当前群组的交易信息列表
    @inlinable
    public func getBcosTransList(_ input: GetBcosTransListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBcosTransListResponse> {
        self.client.execute(action: "GetBcosTransList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分页查询Bcos交易列表
    ///
    /// Bcos分页查询当前群组的交易信息列表
    @inlinable
    public func getBcosTransList(_ input: GetBcosTransListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBcosTransListResponse {
        try await self.client.execute(action: "GetBcosTransList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分页查询Bcos交易列表
    ///
    /// Bcos分页查询当前群组的交易信息列表
    @inlinable
    public func getBcosTransList(clusterId: String, groupId: Int64, pageNumber: Int64? = nil, pageSize: Int64? = nil, blockNumber: Int64? = nil, transHash: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBcosTransListResponse> {
        let input = GetBcosTransListRequest(clusterId: clusterId, groupId: groupId, pageNumber: pageNumber, pageSize: pageSize, blockNumber: blockNumber, transHash: transHash)
        return self.client.execute(action: "GetBcosTransList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分页查询Bcos交易列表
    ///
    /// Bcos分页查询当前群组的交易信息列表
    @inlinable
    public func getBcosTransList(clusterId: String, groupId: Int64, pageNumber: Int64? = nil, pageSize: Int64? = nil, blockNumber: Int64? = nil, transHash: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBcosTransListResponse {
        let input = GetBcosTransListRequest(clusterId: clusterId, groupId: groupId, pageNumber: pageNumber, pageSize: pageSize, blockNumber: blockNumber, transHash: transHash)
        return try await self.client.execute(action: "GetBcosTransList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分页查询Bcos交易列表
    ///
    /// Bcos分页查询当前群组的交易信息列表
    @inlinable
    public func getBcosTransListPaginated(_ input: GetBcosTransListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BcosTransInfo])> {
        self.client.paginate(input: input, region: region, command: self.getBcosTransList, logger: logger, on: eventLoop)
    }

    /// 分页查询Bcos交易列表
    ///
    /// Bcos分页查询当前群组的交易信息列表
    @inlinable
    public func getBcosTransListPaginated(_ input: GetBcosTransListRequest, region: TCRegion? = nil, onResponse: @escaping (GetBcosTransListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getBcosTransList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 分页查询Bcos交易列表
    ///
    /// Bcos分页查询当前群组的交易信息列表
    @inlinable
    public func getBcosTransListPaginator(_ input: GetBcosTransListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<GetBcosTransListRequest, GetBcosTransListResponse>.ResultSequence, responses: TCClient.Paginator<GetBcosTransListRequest, GetBcosTransListResponse>.ResponseSequence) {
        let results = TCClient.Paginator<GetBcosTransListRequest, GetBcosTransListResponse>.ResultSequence(input: input, region: region, command: self.getBcosTransList, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<GetBcosTransListRequest, GetBcosTransListResponse>.ResponseSequence(input: input, region: region, command: self.getBcosTransList, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
