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

extension Cam {
    /// ListWeChatWorkSubAccounts请求参数结构体
    public struct ListWeChatWorkSubAccountsRequest: TCPaginatedRequest {
        /// 偏移量
        public let offset: UInt64

        /// 限制数目
        public let limit: UInt64

        public init(offset: UInt64, limit: UInt64) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: ListWeChatWorkSubAccountsResponse) -> ListWeChatWorkSubAccountsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListWeChatWorkSubAccountsRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// ListWeChatWorkSubAccounts返回参数结构体
    public struct ListWeChatWorkSubAccountsResponse: TCPaginatedResponse {
        /// 企业微信子用户列表。
        public let data: [WeChatWorkSubAccount]

        /// 总数目。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [WeChatWorkSubAccount] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取企业微信子用户列表
    @inlinable
    public func listWeChatWorkSubAccounts(_ input: ListWeChatWorkSubAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWeChatWorkSubAccountsResponse> {
        self.client.execute(action: "ListWeChatWorkSubAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取企业微信子用户列表
    @inlinable
    public func listWeChatWorkSubAccounts(_ input: ListWeChatWorkSubAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWeChatWorkSubAccountsResponse {
        try await self.client.execute(action: "ListWeChatWorkSubAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取企业微信子用户列表
    @inlinable
    public func listWeChatWorkSubAccounts(offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListWeChatWorkSubAccountsResponse> {
        let input = ListWeChatWorkSubAccountsRequest(offset: offset, limit: limit)
        return self.client.execute(action: "ListWeChatWorkSubAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取企业微信子用户列表
    @inlinable
    public func listWeChatWorkSubAccounts(offset: UInt64, limit: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListWeChatWorkSubAccountsResponse {
        let input = ListWeChatWorkSubAccountsRequest(offset: offset, limit: limit)
        return try await self.client.execute(action: "ListWeChatWorkSubAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
