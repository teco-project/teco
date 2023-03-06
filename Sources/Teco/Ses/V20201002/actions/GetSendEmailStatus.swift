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

@_exported import struct Foundation.Date
import TecoDateHelpers
import TecoPaginationHelpers

extension Ses {
    /// GetSendEmailStatus请求参数结构体
    public struct GetSendEmailStatusRequest: TCPaginatedRequest {
        /// 发送的日期，必填。仅支持查询某个日期，不支持范围查询。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var requestDate: Date

        /// 偏移量。默认为0
        public let offset: UInt64

        /// 拉取最大条数，最多 100。
        public let limit: UInt64

        /// SendMail接口返回的MessageId字段。
        public let messageId: String?

        /// 收件人邮箱。
        public let toEmailAddress: String?

        public init(requestDate: Date, offset: UInt64, limit: UInt64, messageId: String? = nil, toEmailAddress: String? = nil) {
            self._requestDate = .init(wrappedValue: requestDate)
            self.offset = offset
            self.limit = limit
            self.messageId = messageId
            self.toEmailAddress = toEmailAddress
        }

        enum CodingKeys: String, CodingKey {
            case requestDate = "RequestDate"
            case offset = "Offset"
            case limit = "Limit"
            case messageId = "MessageId"
            case toEmailAddress = "ToEmailAddress"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: GetSendEmailStatusResponse) -> GetSendEmailStatusRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetSendEmailStatusRequest(requestDate: self.requestDate, offset: self.offset + .init(response.getItems().count), limit: self.limit, messageId: self.messageId, toEmailAddress: self.toEmailAddress)
        }
    }

    /// GetSendEmailStatus返回参数结构体
    public struct GetSendEmailStatusResponse: TCPaginatedResponse {
        /// 邮件发送状态列表
        public let emailStatusList: [SendEmailStatus]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case emailStatusList = "EmailStatusList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SendEmailStatus] {
            self.emailStatusList
        }
    }

    /// 获取邮件发送的状态（待废弃）
    ///
    /// 获取邮件发送状态。仅支持查询30天之内的数据
    /// 默认接口请求频率限制：1次/秒
    @inlinable
    public func getSendEmailStatus(_ input: GetSendEmailStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSendEmailStatusResponse> {
        self.client.execute(action: "GetSendEmailStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取邮件发送的状态（待废弃）
    ///
    /// 获取邮件发送状态。仅支持查询30天之内的数据
    /// 默认接口请求频率限制：1次/秒
    @inlinable
    public func getSendEmailStatus(_ input: GetSendEmailStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSendEmailStatusResponse {
        try await self.client.execute(action: "GetSendEmailStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取邮件发送的状态（待废弃）
    ///
    /// 获取邮件发送状态。仅支持查询30天之内的数据
    /// 默认接口请求频率限制：1次/秒
    @inlinable
    public func getSendEmailStatus(requestDate: Date, offset: UInt64, limit: UInt64, messageId: String? = nil, toEmailAddress: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetSendEmailStatusResponse> {
        let input = GetSendEmailStatusRequest(requestDate: requestDate, offset: offset, limit: limit, messageId: messageId, toEmailAddress: toEmailAddress)
        return self.client.execute(action: "GetSendEmailStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取邮件发送的状态（待废弃）
    ///
    /// 获取邮件发送状态。仅支持查询30天之内的数据
    /// 默认接口请求频率限制：1次/秒
    @inlinable
    public func getSendEmailStatus(requestDate: Date, offset: UInt64, limit: UInt64, messageId: String? = nil, toEmailAddress: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetSendEmailStatusResponse {
        let input = GetSendEmailStatusRequest(requestDate: requestDate, offset: offset, limit: limit, messageId: messageId, toEmailAddress: toEmailAddress)
        return try await self.client.execute(action: "GetSendEmailStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取邮件发送的状态（待废弃）
    ///
    /// 获取邮件发送状态。仅支持查询30天之内的数据
    /// 默认接口请求频率限制：1次/秒
    @inlinable
    public func getSendEmailStatusPaginated(_ input: GetSendEmailStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [SendEmailStatus])> {
        self.client.paginate(input: input, region: region, command: self.getSendEmailStatus, logger: logger, on: eventLoop)
    }

    /// 获取邮件发送的状态（待废弃）
    ///
    /// 获取邮件发送状态。仅支持查询30天之内的数据
    /// 默认接口请求频率限制：1次/秒
    @inlinable @discardableResult
    public func getSendEmailStatusPaginated(_ input: GetSendEmailStatusRequest, region: TCRegion? = nil, onResponse: @escaping (GetSendEmailStatusResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getSendEmailStatus, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取邮件发送的状态（待废弃）
    ///
    /// 获取邮件发送状态。仅支持查询30天之内的数据
    /// 默认接口请求频率限制：1次/秒
    @inlinable
    public func getSendEmailStatusPaginator(_ input: GetSendEmailStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetSendEmailStatusRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getSendEmailStatus, logger: logger, on: eventLoop)
    }
}
