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

extension Ccc {
    /// DescribePSTNActiveSessionList请求参数结构体
    public struct DescribePSTNActiveSessionListRequest: TCPaginatedRequest {
        /// 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        public let sdkAppId: Int64

        /// 数据偏移
        public let offset: Int64

        /// 返回的数据条数，最大 25
        public let limit: Int64

        public init(sdkAppId: Int64, offset: Int64, limit: Int64) {
            self.sdkAppId = sdkAppId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribePSTNActiveSessionListResponse) -> DescribePSTNActiveSessionListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribePSTNActiveSessionListRequest(sdkAppId: self.sdkAppId, offset: self.offset + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribePSTNActiveSessionList返回参数结构体
    public struct DescribePSTNActiveSessionListResponse: TCPaginatedResponse {
        /// 列表总条数
        public let total: Int64

        /// 列表内容
        public let sessions: [PSTNSessionInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case sessions = "Sessions"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [PSTNSessionInfo] {
            self.sessions
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取 PSTN 活动会话列表
    ///
    /// 获取当前正在通话的会话列表
    @inlinable
    public func describePSTNActiveSessionList(_ input: DescribePSTNActiveSessionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePSTNActiveSessionListResponse> {
        self.client.execute(action: "DescribePSTNActiveSessionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取 PSTN 活动会话列表
    ///
    /// 获取当前正在通话的会话列表
    @inlinable
    public func describePSTNActiveSessionList(_ input: DescribePSTNActiveSessionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePSTNActiveSessionListResponse {
        try await self.client.execute(action: "DescribePSTNActiveSessionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取 PSTN 活动会话列表
    ///
    /// 获取当前正在通话的会话列表
    @inlinable
    public func describePSTNActiveSessionList(sdkAppId: Int64, offset: Int64, limit: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePSTNActiveSessionListResponse> {
        let input = DescribePSTNActiveSessionListRequest(sdkAppId: sdkAppId, offset: offset, limit: limit)
        return self.client.execute(action: "DescribePSTNActiveSessionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取 PSTN 活动会话列表
    ///
    /// 获取当前正在通话的会话列表
    @inlinable
    public func describePSTNActiveSessionList(sdkAppId: Int64, offset: Int64, limit: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePSTNActiveSessionListResponse {
        let input = DescribePSTNActiveSessionListRequest(sdkAppId: sdkAppId, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribePSTNActiveSessionList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取 PSTN 活动会话列表
    ///
    /// 获取当前正在通话的会话列表
    @inlinable
    public func describePSTNActiveSessionListPaginated(_ input: DescribePSTNActiveSessionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [PSTNSessionInfo])> {
        self.client.paginate(input: input, region: region, command: self.describePSTNActiveSessionList, logger: logger, on: eventLoop)
    }

    /// 获取 PSTN 活动会话列表
    ///
    /// 获取当前正在通话的会话列表
    @inlinable @discardableResult
    public func describePSTNActiveSessionListPaginated(_ input: DescribePSTNActiveSessionListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribePSTNActiveSessionListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describePSTNActiveSessionList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取 PSTN 活动会话列表
    ///
    /// 获取当前正在通话的会话列表
    ///
    /// - Returns: `AsyncSequence`s of `PSTNSessionInfo` and `DescribePSTNActiveSessionListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describePSTNActiveSessionListPaginator(_ input: DescribePSTNActiveSessionListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribePSTNActiveSessionListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describePSTNActiveSessionList, logger: logger, on: eventLoop)
    }
}
