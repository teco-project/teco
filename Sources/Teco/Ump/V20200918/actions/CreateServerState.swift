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

extension Ump {
    /// CreateServerState请求参数结构体
    public struct CreateServerStateRequest: TCRequest {
        /// 集团编码
        public let groupCode: String

        /// 服务器监控信息列表
        public let serverStateItems: [ServerStateItem]

        /// 商场ID
        public let mallId: UInt64?

        /// 服务器监控信息上报时间戳，单位毫秒
        public let reportTime: UInt64?

        public init(groupCode: String, serverStateItems: [ServerStateItem], mallId: UInt64? = nil, reportTime: UInt64? = nil) {
            self.groupCode = groupCode
            self.serverStateItems = serverStateItems
            self.mallId = mallId
            self.reportTime = reportTime
        }

        enum CodingKeys: String, CodingKey {
            case groupCode = "GroupCode"
            case serverStateItems = "ServerStateItems"
            case mallId = "MallId"
            case reportTime = "ReportTime"
        }
    }

    /// CreateServerState返回参数结构体
    public struct CreateServerStateResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 服务器监控信息上报
    ///
    /// 上报所有服务器硬件监控信息
    @inlinable @discardableResult
    public func createServerState(_ input: CreateServerStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateServerStateResponse> {
        self.client.execute(action: "CreateServerState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 服务器监控信息上报
    ///
    /// 上报所有服务器硬件监控信息
    @inlinable @discardableResult
    public func createServerState(_ input: CreateServerStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateServerStateResponse {
        try await self.client.execute(action: "CreateServerState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 服务器监控信息上报
    ///
    /// 上报所有服务器硬件监控信息
    @inlinable @discardableResult
    public func createServerState(groupCode: String, serverStateItems: [ServerStateItem], mallId: UInt64? = nil, reportTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateServerStateResponse> {
        self.createServerState(.init(groupCode: groupCode, serverStateItems: serverStateItems, mallId: mallId, reportTime: reportTime), region: region, logger: logger, on: eventLoop)
    }

    /// 服务器监控信息上报
    ///
    /// 上报所有服务器硬件监控信息
    @inlinable @discardableResult
    public func createServerState(groupCode: String, serverStateItems: [ServerStateItem], mallId: UInt64? = nil, reportTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateServerStateResponse {
        try await self.createServerState(.init(groupCode: groupCode, serverStateItems: serverStateItems, mallId: mallId, reportTime: reportTime), region: region, logger: logger, on: eventLoop)
    }
}
