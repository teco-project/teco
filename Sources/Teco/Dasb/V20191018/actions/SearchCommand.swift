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
    /// SearchCommand请求参数结构体
    public struct SearchCommandRequest: TCPaginatedRequest {
        /// 搜索区间的开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 搜索区间的结束时间，不填默认为开始时间到现在为止
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        /// 用户名
        public let userName: String?

        /// 姓名
        public let realName: String?

        /// 资产实例ID
        public let instanceId: String?

        /// 资产名称
        public let deviceName: String?

        /// 资产的公网IP
        public let publicIp: String?

        /// 资产的内网IP
        public let privateIp: String?

        /// 执行的命令
        public let cmd: String?

        /// Cmd字段是前端传值是否进行base64.
        /// 0:否，1：是
        public let encoding: UInt64?

        /// 根据拦截状态进行过滤：1 - 已执行，2 - 被阻断
        public let auditAction: [UInt64]?

        /// 每页容量，默认20，最大200
        public let limit: UInt64?

        /// 分页偏移位置，默认值为0
        public let offset: UInt64?

        public init(startTime: Date, endTime: Date? = nil, userName: String? = nil, realName: String? = nil, instanceId: String? = nil, deviceName: String? = nil, publicIp: String? = nil, privateIp: String? = nil, cmd: String? = nil, encoding: UInt64? = nil, auditAction: [UInt64]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.userName = userName
            self.realName = realName
            self.instanceId = instanceId
            self.deviceName = deviceName
            self.publicIp = publicIp
            self.privateIp = privateIp
            self.cmd = cmd
            self.encoding = encoding
            self.auditAction = auditAction
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case userName = "UserName"
            case realName = "RealName"
            case instanceId = "InstanceId"
            case deviceName = "DeviceName"
            case publicIp = "PublicIp"
            case privateIp = "PrivateIp"
            case cmd = "Cmd"
            case encoding = "Encoding"
            case auditAction = "AuditAction"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: SearchCommandResponse) -> SearchCommandRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(startTime: self.startTime, endTime: self.endTime, userName: self.userName, realName: self.realName, instanceId: self.instanceId, deviceName: self.deviceName, publicIp: self.publicIp, privateIp: self.privateIp, cmd: self.cmd, encoding: self.encoding, auditAction: self.auditAction, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// SearchCommand返回参数结构体
    public struct SearchCommandResponse: TCPaginatedResponse {
        /// 总记录数
        public let totalCount: UInt64

        /// 命令列表
        public let commands: [SearchCommandResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case commands = "Commands"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SearchCommandResult`` list from the paginated response.
        public func getItems() -> [SearchCommandResult] {
            self.commands
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 命令执行检索
    @inlinable
    public func searchCommand(_ input: SearchCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchCommandResponse> {
        self.client.execute(action: "SearchCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 命令执行检索
    @inlinable
    public func searchCommand(_ input: SearchCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchCommandResponse {
        try await self.client.execute(action: "SearchCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 命令执行检索
    @inlinable
    public func searchCommand(startTime: Date, endTime: Date? = nil, userName: String? = nil, realName: String? = nil, instanceId: String? = nil, deviceName: String? = nil, publicIp: String? = nil, privateIp: String? = nil, cmd: String? = nil, encoding: UInt64? = nil, auditAction: [UInt64]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchCommandResponse> {
        self.searchCommand(.init(startTime: startTime, endTime: endTime, userName: userName, realName: realName, instanceId: instanceId, deviceName: deviceName, publicIp: publicIp, privateIp: privateIp, cmd: cmd, encoding: encoding, auditAction: auditAction, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 命令执行检索
    @inlinable
    public func searchCommand(startTime: Date, endTime: Date? = nil, userName: String? = nil, realName: String? = nil, instanceId: String? = nil, deviceName: String? = nil, publicIp: String? = nil, privateIp: String? = nil, cmd: String? = nil, encoding: UInt64? = nil, auditAction: [UInt64]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchCommandResponse {
        try await self.searchCommand(.init(startTime: startTime, endTime: endTime, userName: userName, realName: realName, instanceId: instanceId, deviceName: deviceName, publicIp: publicIp, privateIp: privateIp, cmd: cmd, encoding: encoding, auditAction: auditAction, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 命令执行检索
    @inlinable
    public func searchCommandPaginated(_ input: SearchCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SearchCommandResult])> {
        self.client.paginate(input: input, region: region, command: self.searchCommand, logger: logger, on: eventLoop)
    }

    /// 命令执行检索
    @inlinable @discardableResult
    public func searchCommandPaginated(_ input: SearchCommandRequest, region: TCRegion? = nil, onResponse: @escaping (SearchCommandResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.searchCommand, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 命令执行检索
    ///
    /// - Returns: `AsyncSequence`s of ``SearchCommandResult`` and ``SearchCommandResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func searchCommandPaginator(_ input: SearchCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<SearchCommandRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.searchCommand, logger: logger, on: eventLoop)
    }
}
