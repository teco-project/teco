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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Dasb {
    /// SearchSession请求参数结构体
    public struct SearchSessionRequest: TCPaginatedRequest {
        /// 内部Ip
        public let privateIp: String?

        /// 外部Ip
        public let publicIp: String?

        /// 用户名，长度不超过20
        public let userName: String?

        /// 账号，长度不超过64
        public let account: String?

        /// 来源Ip
        public let fromIp: String?

        /// 搜索区间的开始时间。若入参是Id，则非必传，否则为必传。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date?

        /// 搜索区间的结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        /// 会话协议类型，只能是1、2、3或4 对应关系为1-tui 2-gui 3-file 4-数据库。若入参是Id，则非必传，否则为必传。
        public let kind: UInt64?

        /// 偏移量
        public let offset: UInt64?

        /// 分页的页内记录数，默认为20，最大200
        public let limit: UInt64?

        /// 姓名，长度不超过20
        public let realName: String?

        /// 主机名，长度不超过64
        public let deviceName: String?

        /// 状态，1为活跃，2为结束，3为强制离线，4为其他错误
        public let status: UInt64?

        /// 若入参为Id，则其他入参字段不作为搜索依据，仅按照Id来搜索会话
        public let id: String?

        public init(privateIp: String? = nil, publicIp: String? = nil, userName: String? = nil, account: String? = nil, fromIp: String? = nil, startTime: Date? = nil, endTime: Date? = nil, kind: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, realName: String? = nil, deviceName: String? = nil, status: UInt64? = nil, id: String? = nil) {
            self.privateIp = privateIp
            self.publicIp = publicIp
            self.userName = userName
            self.account = account
            self.fromIp = fromIp
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.kind = kind
            self.offset = offset
            self.limit = limit
            self.realName = realName
            self.deviceName = deviceName
            self.status = status
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case privateIp = "PrivateIp"
            case publicIp = "PublicIp"
            case userName = "UserName"
            case account = "Account"
            case fromIp = "FromIp"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case kind = "Kind"
            case offset = "Offset"
            case limit = "Limit"
            case realName = "RealName"
            case deviceName = "DeviceName"
            case status = "Status"
            case id = "Id"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: SearchSessionResponse) -> SearchSessionRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(privateIp: self.privateIp, publicIp: self.publicIp, userName: self.userName, account: self.account, fromIp: self.fromIp, startTime: self.startTime, endTime: self.endTime, kind: self.kind, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, realName: self.realName, deviceName: self.deviceName, status: self.status, id: self.id)
        }
    }

    /// SearchSession返回参数结构体
    public struct SearchSessionResponse: TCPaginatedResponse {
        /// 记录数
        public let totalCount: UInt64

        /// 会话信息列表
        public let sessionSet: [SessionResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case sessionSet = "SessionSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SessionResult`` list from the paginated response.
        public func getItems() -> [SessionResult] {
            self.sessionSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 搜索会话
    @inlinable
    public func searchSession(_ input: SearchSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchSessionResponse> {
        self.client.execute(action: "SearchSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 搜索会话
    @inlinable
    public func searchSession(_ input: SearchSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchSessionResponse {
        try await self.client.execute(action: "SearchSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 搜索会话
    @inlinable
    public func searchSession(privateIp: String? = nil, publicIp: String? = nil, userName: String? = nil, account: String? = nil, fromIp: String? = nil, startTime: Date? = nil, endTime: Date? = nil, kind: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, realName: String? = nil, deviceName: String? = nil, status: UInt64? = nil, id: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchSessionResponse> {
        self.searchSession(.init(privateIp: privateIp, publicIp: publicIp, userName: userName, account: account, fromIp: fromIp, startTime: startTime, endTime: endTime, kind: kind, offset: offset, limit: limit, realName: realName, deviceName: deviceName, status: status, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索会话
    @inlinable
    public func searchSession(privateIp: String? = nil, publicIp: String? = nil, userName: String? = nil, account: String? = nil, fromIp: String? = nil, startTime: Date? = nil, endTime: Date? = nil, kind: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, realName: String? = nil, deviceName: String? = nil, status: UInt64? = nil, id: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchSessionResponse {
        try await self.searchSession(.init(privateIp: privateIp, publicIp: publicIp, userName: userName, account: account, fromIp: fromIp, startTime: startTime, endTime: endTime, kind: kind, offset: offset, limit: limit, realName: realName, deviceName: deviceName, status: status, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 搜索会话
    @inlinable
    public func searchSessionPaginated(_ input: SearchSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SessionResult])> {
        self.client.paginate(input: input, region: region, command: self.searchSession, logger: logger, on: eventLoop)
    }

    /// 搜索会话
    @inlinable @discardableResult
    public func searchSessionPaginated(_ input: SearchSessionRequest, region: TCRegion? = nil, onResponse: @escaping (SearchSessionResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.searchSession, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 搜索会话
    ///
    /// - Returns: `AsyncSequence`s of ``SessionResult`` and ``SearchSessionResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func searchSessionPaginator(_ input: SearchSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<SearchSessionRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.searchSession, logger: logger, on: eventLoop)
    }
}
