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
    /// ListBlackEmailAddress请求参数结构体
    public struct ListBlackEmailAddressRequest: TCPaginatedRequest {
        /// 开始日期，格式为YYYY-MM-DD
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var startDate: Date

        /// 结束日期，格式为YYYY-MM-DD
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var endDate: Date

        /// 规范，配合Offset使用
        public let limit: UInt64

        /// 规范，配合Limit使用，Limit最大取值为100
        public let offset: UInt64

        /// 可以指定邮箱进行查询
        public let emailAddress: String?

        /// 可以指定任务ID进行查询
        public let taskID: String?

        public init(startDate: Date, endDate: Date, limit: UInt64, offset: UInt64, emailAddress: String? = nil, taskID: String? = nil) {
            self._startDate = .init(wrappedValue: startDate)
            self._endDate = .init(wrappedValue: endDate)
            self.limit = limit
            self.offset = offset
            self.emailAddress = emailAddress
            self.taskID = taskID
        }

        enum CodingKeys: String, CodingKey {
            case startDate = "StartDate"
            case endDate = "EndDate"
            case limit = "Limit"
            case offset = "Offset"
            case emailAddress = "EmailAddress"
            case taskID = "TaskID"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: ListBlackEmailAddressResponse) -> ListBlackEmailAddressRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListBlackEmailAddressRequest(startDate: self.startDate, endDate: self.endDate, limit: self.limit, offset: self.offset + .init(response.getItems().count), emailAddress: self.emailAddress, taskID: self.taskID)
        }
    }

    /// ListBlackEmailAddress返回参数结构体
    public struct ListBlackEmailAddressResponse: TCPaginatedResponse {
        /// 黑名单列表
        public let blackList: [BlackEmailAddress]

        /// 黑名单总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case blackList = "BlackList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BlackEmailAddress] {
            self.blackList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取黑名单邮箱地址
    ///
    /// 腾讯云发送的邮件一旦被收件方判断为硬退(Hard Bounce)，腾讯云会拉黑该地址，并不允许所有用户向该地址发送邮件。成为邮箱黑名单。如果业务方确认是误判，可以从黑名单中删除。
    @inlinable
    public func listBlackEmailAddress(_ input: ListBlackEmailAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBlackEmailAddressResponse> {
        self.client.execute(action: "ListBlackEmailAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取黑名单邮箱地址
    ///
    /// 腾讯云发送的邮件一旦被收件方判断为硬退(Hard Bounce)，腾讯云会拉黑该地址，并不允许所有用户向该地址发送邮件。成为邮箱黑名单。如果业务方确认是误判，可以从黑名单中删除。
    @inlinable
    public func listBlackEmailAddress(_ input: ListBlackEmailAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListBlackEmailAddressResponse {
        try await self.client.execute(action: "ListBlackEmailAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取黑名单邮箱地址
    ///
    /// 腾讯云发送的邮件一旦被收件方判断为硬退(Hard Bounce)，腾讯云会拉黑该地址，并不允许所有用户向该地址发送邮件。成为邮箱黑名单。如果业务方确认是误判，可以从黑名单中删除。
    @inlinable
    public func listBlackEmailAddress(startDate: Date, endDate: Date, limit: UInt64, offset: UInt64, emailAddress: String? = nil, taskID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListBlackEmailAddressResponse> {
        let input = ListBlackEmailAddressRequest(startDate: startDate, endDate: endDate, limit: limit, offset: offset, emailAddress: emailAddress, taskID: taskID)
        return self.client.execute(action: "ListBlackEmailAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取黑名单邮箱地址
    ///
    /// 腾讯云发送的邮件一旦被收件方判断为硬退(Hard Bounce)，腾讯云会拉黑该地址，并不允许所有用户向该地址发送邮件。成为邮箱黑名单。如果业务方确认是误判，可以从黑名单中删除。
    @inlinable
    public func listBlackEmailAddress(startDate: Date, endDate: Date, limit: UInt64, offset: UInt64, emailAddress: String? = nil, taskID: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListBlackEmailAddressResponse {
        let input = ListBlackEmailAddressRequest(startDate: startDate, endDate: endDate, limit: limit, offset: offset, emailAddress: emailAddress, taskID: taskID)
        return try await self.client.execute(action: "ListBlackEmailAddress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取黑名单邮箱地址
    ///
    /// 腾讯云发送的邮件一旦被收件方判断为硬退(Hard Bounce)，腾讯云会拉黑该地址，并不允许所有用户向该地址发送邮件。成为邮箱黑名单。如果业务方确认是误判，可以从黑名单中删除。
    @inlinable
    public func listBlackEmailAddressPaginated(_ input: ListBlackEmailAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BlackEmailAddress])> {
        self.client.paginate(input: input, region: region, command: self.listBlackEmailAddress, logger: logger, on: eventLoop)
    }

    /// 获取黑名单邮箱地址
    ///
    /// 腾讯云发送的邮件一旦被收件方判断为硬退(Hard Bounce)，腾讯云会拉黑该地址，并不允许所有用户向该地址发送邮件。成为邮箱黑名单。如果业务方确认是误判，可以从黑名单中删除。
    @inlinable
    public func listBlackEmailAddressPaginated(_ input: ListBlackEmailAddressRequest, region: TCRegion? = nil, onResponse: @escaping (ListBlackEmailAddressResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listBlackEmailAddress, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取黑名单邮箱地址
    ///
    /// 腾讯云发送的邮件一旦被收件方判断为硬退(Hard Bounce)，腾讯云会拉黑该地址，并不允许所有用户向该地址发送邮件。成为邮箱黑名单。如果业务方确认是误判，可以从黑名单中删除。
    @inlinable
    public func listBlackEmailAddressPaginator(_ input: ListBlackEmailAddressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<ListBlackEmailAddressRequest, ListBlackEmailAddressResponse>.ResultSequence, responses: TCClient.Paginator<ListBlackEmailAddressRequest, ListBlackEmailAddressResponse>.ResponseSequence) {
        let results = TCClient.Paginator<ListBlackEmailAddressRequest, ListBlackEmailAddressResponse>.ResultSequence(input: input, region: region, command: self.listBlackEmailAddress, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<ListBlackEmailAddressRequest, ListBlackEmailAddressResponse>.ResponseSequence(input: input, region: region, command: self.listBlackEmailAddress, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
