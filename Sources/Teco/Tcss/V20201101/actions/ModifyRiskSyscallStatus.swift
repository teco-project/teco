//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// ModifyRiskSyscallStatus请求参数结构体
    public struct ModifyRiskSyscallStatusRequest: TCRequestModel {
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

    /// ModifyRiskSyscallStatus返回参数结构体
    public struct ModifyRiskSyscallStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改高危系统调用事件状态
    ///
    /// 修改高危系统调用事件的状态信息
    @inlinable
    public func modifyRiskSyscallStatus(_ input: ModifyRiskSyscallStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyRiskSyscallStatusResponse > {
        self.client.execute(action: "ModifyRiskSyscallStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改高危系统调用事件状态
    ///
    /// 修改高危系统调用事件的状态信息
    @inlinable
    public func modifyRiskSyscallStatus(_ input: ModifyRiskSyscallStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRiskSyscallStatusResponse {
        try await self.client.execute(action: "ModifyRiskSyscallStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改高危系统调用事件状态
    ///
    /// 修改高危系统调用事件的状态信息
    @inlinable
    public func modifyRiskSyscallStatus(eventIdSet: [String], status: String, remark: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyRiskSyscallStatusResponse > {
        self.modifyRiskSyscallStatus(ModifyRiskSyscallStatusRequest(eventIdSet: eventIdSet, status: status, remark: remark), logger: logger, on: eventLoop)
    }

    /// 修改高危系统调用事件状态
    ///
    /// 修改高危系统调用事件的状态信息
    @inlinable
    public func modifyRiskSyscallStatus(eventIdSet: [String], status: String, remark: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyRiskSyscallStatusResponse {
        try await self.modifyRiskSyscallStatus(ModifyRiskSyscallStatusRequest(eventIdSet: eventIdSet, status: status, remark: remark), logger: logger, on: eventLoop)
    }
}
