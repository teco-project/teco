//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tcss {
    /// ModifyAbnormalProcessStatus请求参数结构体
    public struct ModifyAbnormalProcessStatusRequest: TCRequestModel {
        /// 处理事件ids
        public let eventIdSet: [String]

        /// 标记事件的状态，
        ///     EVENT_DEALED:事件处理
        ///     EVENT_INGNORE"：事件忽略
        ///      EVENT_DEL:事件删除
        ///      EVENT_ADD_WHITE:事件加白
        public let status: String

        /// 事件备注
        public let remark: String?

        public init(eventIdSet: [String], status: String, remark: String? = nil) {
            self.eventIdSet = eventIdSet
            self.status = status
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case eventIdSet = "EventIdSet"
            case status = "Status"
            case remark = "Remark"
        }
    }

    /// ModifyAbnormalProcessStatus返回参数结构体
    public struct ModifyAbnormalProcessStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改异常进程事件状态
    ///
    /// 修改异常进程事件的状态信息
    @inlinable @discardableResult
    public func modifyAbnormalProcessStatus(_ input: ModifyAbnormalProcessStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAbnormalProcessStatusResponse> {
        self.client.execute(action: "ModifyAbnormalProcessStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改异常进程事件状态
    ///
    /// 修改异常进程事件的状态信息
    @inlinable @discardableResult
    public func modifyAbnormalProcessStatus(_ input: ModifyAbnormalProcessStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAbnormalProcessStatusResponse {
        try await self.client.execute(action: "ModifyAbnormalProcessStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改异常进程事件状态
    ///
    /// 修改异常进程事件的状态信息
    @inlinable @discardableResult
    public func modifyAbnormalProcessStatus(eventIdSet: [String], status: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAbnormalProcessStatusResponse> {
        self.modifyAbnormalProcessStatus(ModifyAbnormalProcessStatusRequest(eventIdSet: eventIdSet, status: status, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 修改异常进程事件状态
    ///
    /// 修改异常进程事件的状态信息
    @inlinable @discardableResult
    public func modifyAbnormalProcessStatus(eventIdSet: [String], status: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAbnormalProcessStatusResponse {
        try await self.modifyAbnormalProcessStatus(ModifyAbnormalProcessStatusRequest(eventIdSet: eventIdSet, status: status, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
