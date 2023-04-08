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
import TecoCore
import TecoDateHelpers

extension Cdn {
    /// ModifyPurgeFetchTaskStatus请求参数结构体
    public struct ModifyPurgeFetchTaskStatusRequest: TCRequestModel {
        /// 执行时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var executionTime: Date

        /// 执行状态
        /// success: 成功
        /// failed: 失败
        public let executionStatus: String

        /// 任务 ID
        public let id: String

        /// 执行状态详情
        public let executionStatusDesc: String?

        public init(executionTime: Date, executionStatus: String, id: String, executionStatusDesc: String? = nil) {
            self._executionTime = .init(wrappedValue: executionTime)
            self.executionStatus = executionStatus
            self.id = id
            self.executionStatusDesc = executionStatusDesc
        }

        enum CodingKeys: String, CodingKey {
            case executionTime = "ExecutionTime"
            case executionStatus = "ExecutionStatus"
            case id = "Id"
            case executionStatusDesc = "ExecutionStatusDesc"
        }
    }

    /// ModifyPurgeFetchTaskStatus返回参数结构体
    public struct ModifyPurgeFetchTaskStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 上报定时刷新预热任务执行状态
    ///
    /// ModifyPurgeFetchTaskStatus 用于上报定时刷新预热任务执行状态
    @inlinable @discardableResult
    public func modifyPurgeFetchTaskStatus(_ input: ModifyPurgeFetchTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPurgeFetchTaskStatusResponse> {
        self.client.execute(action: "ModifyPurgeFetchTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上报定时刷新预热任务执行状态
    ///
    /// ModifyPurgeFetchTaskStatus 用于上报定时刷新预热任务执行状态
    @inlinable @discardableResult
    public func modifyPurgeFetchTaskStatus(_ input: ModifyPurgeFetchTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPurgeFetchTaskStatusResponse {
        try await self.client.execute(action: "ModifyPurgeFetchTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上报定时刷新预热任务执行状态
    ///
    /// ModifyPurgeFetchTaskStatus 用于上报定时刷新预热任务执行状态
    @inlinable @discardableResult
    public func modifyPurgeFetchTaskStatus(executionTime: Date, executionStatus: String, id: String, executionStatusDesc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPurgeFetchTaskStatusResponse> {
        self.modifyPurgeFetchTaskStatus(.init(executionTime: executionTime, executionStatus: executionStatus, id: id, executionStatusDesc: executionStatusDesc), region: region, logger: logger, on: eventLoop)
    }

    /// 上报定时刷新预热任务执行状态
    ///
    /// ModifyPurgeFetchTaskStatus 用于上报定时刷新预热任务执行状态
    @inlinable @discardableResult
    public func modifyPurgeFetchTaskStatus(executionTime: Date, executionStatus: String, id: String, executionStatusDesc: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPurgeFetchTaskStatusResponse {
        try await self.modifyPurgeFetchTaskStatus(.init(executionTime: executionTime, executionStatus: executionStatus, id: id, executionStatusDesc: executionStatusDesc), region: region, logger: logger, on: eventLoop)
    }
}
