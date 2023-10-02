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

extension Ses {
    /// ListReceiverDetails请求参数结构体
    public struct ListReceiverDetailsRequest: TCPaginatedRequest {
        /// 收件人列表ID,CreateReceiver接口创建收件人列表时会返回该值
        public let receiverId: UInt64

        /// 偏移量，整型，从0开始
        public let offset: UInt64

        /// 限制数目，整型,不超过100
        public let limit: UInt64

        /// 收件人地址，长度0-50，示例：xxx@te.com，支持模糊查询
        public let email: String?

        public init(receiverId: UInt64, offset: UInt64, limit: UInt64, email: String? = nil) {
            self.receiverId = receiverId
            self.offset = offset
            self.limit = limit
            self.email = email
        }

        enum CodingKeys: String, CodingKey {
            case receiverId = "ReceiverId"
            case offset = "Offset"
            case limit = "Limit"
            case email = "Email"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListReceiverDetailsResponse) -> ListReceiverDetailsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(receiverId: self.receiverId, offset: self.offset + .init(response.getItems().count), limit: self.limit, email: self.email)
        }
    }

    /// ListReceiverDetails返回参数结构体
    public struct ListReceiverDetailsResponse: TCPaginatedResponse {
        /// 总数
        public let totalCount: UInt64

        /// 数据记录
        public let data: [ReceiverDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ReceiverDetail`` list from the paginated response.
        public func getItems() -> [ReceiverDetail] {
            self.data
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询某个收件人列表详情
    ///
    /// 根据收件人列表id查询收件人列表中的所有收件人邮箱地址，分页查询，可以根据收件邮箱地址来过滤查询
    @inlinable
    public func listReceiverDetails(_ input: ListReceiverDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListReceiverDetailsResponse> {
        self.client.execute(action: "ListReceiverDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询某个收件人列表详情
    ///
    /// 根据收件人列表id查询收件人列表中的所有收件人邮箱地址，分页查询，可以根据收件邮箱地址来过滤查询
    @inlinable
    public func listReceiverDetails(_ input: ListReceiverDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListReceiverDetailsResponse {
        try await self.client.execute(action: "ListReceiverDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询某个收件人列表详情
    ///
    /// 根据收件人列表id查询收件人列表中的所有收件人邮箱地址，分页查询，可以根据收件邮箱地址来过滤查询
    @inlinable
    public func listReceiverDetails(receiverId: UInt64, offset: UInt64, limit: UInt64, email: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListReceiverDetailsResponse> {
        self.listReceiverDetails(.init(receiverId: receiverId, offset: offset, limit: limit, email: email), region: region, logger: logger, on: eventLoop)
    }

    /// 查询某个收件人列表详情
    ///
    /// 根据收件人列表id查询收件人列表中的所有收件人邮箱地址，分页查询，可以根据收件邮箱地址来过滤查询
    @inlinable
    public func listReceiverDetails(receiverId: UInt64, offset: UInt64, limit: UInt64, email: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListReceiverDetailsResponse {
        try await self.listReceiverDetails(.init(receiverId: receiverId, offset: offset, limit: limit, email: email), region: region, logger: logger, on: eventLoop)
    }

    /// 查询某个收件人列表详情
    ///
    /// 根据收件人列表id查询收件人列表中的所有收件人邮箱地址，分页查询，可以根据收件邮箱地址来过滤查询
    @inlinable
    public func listReceiverDetailsPaginated(_ input: ListReceiverDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ReceiverDetail])> {
        self.client.paginate(input: input, region: region, command: self.listReceiverDetails, logger: logger, on: eventLoop)
    }

    /// 查询某个收件人列表详情
    ///
    /// 根据收件人列表id查询收件人列表中的所有收件人邮箱地址，分页查询，可以根据收件邮箱地址来过滤查询
    @inlinable @discardableResult
    public func listReceiverDetailsPaginated(_ input: ListReceiverDetailsRequest, region: TCRegion? = nil, onResponse: @escaping (ListReceiverDetailsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listReceiverDetails, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询某个收件人列表详情
    ///
    /// 根据收件人列表id查询收件人列表中的所有收件人邮箱地址，分页查询，可以根据收件邮箱地址来过滤查询
    ///
    /// - Returns: `AsyncSequence`s of ``ReceiverDetail`` and ``ListReceiverDetailsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func listReceiverDetailsPaginator(_ input: ListReceiverDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListReceiverDetailsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listReceiverDetails, logger: logger, on: eventLoop)
    }
}
