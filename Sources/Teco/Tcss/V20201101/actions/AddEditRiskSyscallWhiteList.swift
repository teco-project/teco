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
    /// AddEditRiskSyscallWhiteList请求参数结构体
    public struct AddEditRiskSyscallWhiteListRequest: TCRequestModel {
        /// 仅在添加事件白名单时候使用
        public let eventId: String?

        /// 增加或编辑白名单信。新增白名单时WhiteListInfo.id为空，编辑白名单WhiteListInfo.id不能为空.
        public let whiteListInfo: RiskSyscallWhiteListInfo?

        public init(eventId: String? = nil, whiteListInfo: RiskSyscallWhiteListInfo? = nil) {
            self.eventId = eventId
            self.whiteListInfo = whiteListInfo
        }

        enum CodingKeys: String, CodingKey {
            case eventId = "EventId"
            case whiteListInfo = "WhiteListInfo"
        }
    }

    /// AddEditRiskSyscallWhiteList返回参数结构体
    public struct AddEditRiskSyscallWhiteListResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加编辑高危系统调用白名单
    ///
    /// 添加编辑运行时高危系统调用白名单
    @inlinable @discardableResult
    public func addEditRiskSyscallWhiteList(_ input: AddEditRiskSyscallWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddEditRiskSyscallWhiteListResponse> {
        self.client.execute(action: "AddEditRiskSyscallWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加编辑高危系统调用白名单
    ///
    /// 添加编辑运行时高危系统调用白名单
    @inlinable @discardableResult
    public func addEditRiskSyscallWhiteList(_ input: AddEditRiskSyscallWhiteListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddEditRiskSyscallWhiteListResponse {
        try await self.client.execute(action: "AddEditRiskSyscallWhiteList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加编辑高危系统调用白名单
    ///
    /// 添加编辑运行时高危系统调用白名单
    @inlinable @discardableResult
    public func addEditRiskSyscallWhiteList(eventId: String? = nil, whiteListInfo: RiskSyscallWhiteListInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddEditRiskSyscallWhiteListResponse> {
        self.addEditRiskSyscallWhiteList(.init(eventId: eventId, whiteListInfo: whiteListInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 添加编辑高危系统调用白名单
    ///
    /// 添加编辑运行时高危系统调用白名单
    @inlinable @discardableResult
    public func addEditRiskSyscallWhiteList(eventId: String? = nil, whiteListInfo: RiskSyscallWhiteListInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddEditRiskSyscallWhiteListResponse {
        try await self.addEditRiskSyscallWhiteList(.init(eventId: eventId, whiteListInfo: whiteListInfo), region: region, logger: logger, on: eventLoop)
    }
}
