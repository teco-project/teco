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

extension Bm {
    /// DescribeUserCmds请求参数结构体
    public struct DescribeUserCmdsRequest: TCPaginatedRequest {
        /// 偏移量
        public let offset: UInt64

        /// 数量限制
        public let limit: UInt64

        /// 排序字段，支持： OsType,CreateTime,ModifyTime
        public let orderField: String?

        /// 排序方式，取值: 1倒序，0顺序；默认倒序
        public let order: UInt64?

        /// 关键字搜索，可搜索ID或别名，支持模糊搜索
        public let searchKey: String?

        /// 查询的脚本ID
        public let cmdId: String?

        public init(offset: UInt64, limit: UInt64, orderField: String? = nil, order: UInt64? = nil, searchKey: String? = nil, cmdId: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.orderField = orderField
            self.order = order
            self.searchKey = searchKey
            self.cmdId = cmdId
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case orderField = "OrderField"
            case order = "Order"
            case searchKey = "SearchKey"
            case cmdId = "CmdId"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeUserCmdsResponse) -> DescribeUserCmdsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUserCmdsRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, orderField: self.orderField, order: self.order, searchKey: self.searchKey, cmdId: self.cmdId)
        }
    }

    /// DescribeUserCmds返回参数结构体
    public struct DescribeUserCmdsResponse: TCPaginatedResponse {
        /// 返回数量
        public let totalCount: UInt64

        /// 脚本信息列表
        public let userCmds: [UserCmd]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case userCmds = "UserCmds"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [UserCmd] {
            self.userCmds
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取自定义脚本信息列表
    @inlinable
    public func describeUserCmds(_ input: DescribeUserCmdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserCmdsResponse> {
        self.client.execute(action: "DescribeUserCmds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取自定义脚本信息列表
    @inlinable
    public func describeUserCmds(_ input: DescribeUserCmdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserCmdsResponse {
        try await self.client.execute(action: "DescribeUserCmds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取自定义脚本信息列表
    @inlinable
    public func describeUserCmds(offset: UInt64, limit: UInt64, orderField: String? = nil, order: UInt64? = nil, searchKey: String? = nil, cmdId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserCmdsResponse> {
        let input = DescribeUserCmdsRequest(offset: offset, limit: limit, orderField: orderField, order: order, searchKey: searchKey, cmdId: cmdId)
        return self.client.execute(action: "DescribeUserCmds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取自定义脚本信息列表
    @inlinable
    public func describeUserCmds(offset: UInt64, limit: UInt64, orderField: String? = nil, order: UInt64? = nil, searchKey: String? = nil, cmdId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserCmdsResponse {
        let input = DescribeUserCmdsRequest(offset: offset, limit: limit, orderField: orderField, order: order, searchKey: searchKey, cmdId: cmdId)
        return try await self.client.execute(action: "DescribeUserCmds", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取自定义脚本信息列表
    @inlinable
    public func describeUserCmdsPaginated(_ input: DescribeUserCmdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [UserCmd])> {
        self.client.paginate(input: input, region: region, command: self.describeUserCmds, logger: logger, on: eventLoop)
    }

    /// 获取自定义脚本信息列表
    @inlinable @discardableResult
    public func describeUserCmdsPaginated(_ input: DescribeUserCmdsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUserCmdsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUserCmds, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取自定义脚本信息列表
    ///
    /// - Returns: `AsyncSequence`s of `UserCmd` and `DescribeUserCmdsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUserCmdsPaginator(_ input: DescribeUserCmdsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUserCmdsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUserCmds, logger: logger, on: eventLoop)
    }
}
