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

extension Tcss {
    /// ModifyVulDefenceEventStatus请求参数结构体
    public struct ModifyVulDefenceEventStatusRequest: TCRequestModel {
        /// 事件IDs数组
        public let eventIDs: [Int64]

        /// 操作状态：
        /// EVENT_DEALED：已处理，EVENT_IGNORE：忽略，EVENT_ISOLATE_CONTAINER：隔离容器，EVENT_DEL：删除
        public let status: String

        /// 备注
        public let remark: String?

        public init(eventIDs: [Int64], status: String, remark: String? = nil) {
            self.eventIDs = eventIDs
            self.status = status
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case eventIDs = "EventIDs"
            case status = "Status"
            case remark = "Remark"
        }
    }

    /// ModifyVulDefenceEventStatus返回参数结构体
    public struct ModifyVulDefenceEventStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改漏洞防御事件状态
    @inlinable @discardableResult
    public func modifyVulDefenceEventStatus(_ input: ModifyVulDefenceEventStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVulDefenceEventStatusResponse> {
        self.client.execute(action: "ModifyVulDefenceEventStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改漏洞防御事件状态
    @inlinable @discardableResult
    public func modifyVulDefenceEventStatus(_ input: ModifyVulDefenceEventStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVulDefenceEventStatusResponse {
        try await self.client.execute(action: "ModifyVulDefenceEventStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改漏洞防御事件状态
    @inlinable @discardableResult
    public func modifyVulDefenceEventStatus(eventIDs: [Int64], status: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVulDefenceEventStatusResponse> {
        self.modifyVulDefenceEventStatus(.init(eventIDs: eventIDs, status: status, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 修改漏洞防御事件状态
    @inlinable @discardableResult
    public func modifyVulDefenceEventStatus(eventIDs: [Int64], status: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVulDefenceEventStatusResponse {
        try await self.modifyVulDefenceEventStatus(.init(eventIDs: eventIDs, status: status, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
