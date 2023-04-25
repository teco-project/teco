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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tcss {
    /// ModifyVirusFileStatus请求参数结构体
    public struct ModifyVirusFileStatusRequest: TCRequestModel {
        /// 处理事件id
        public let eventIdSet: [String]

        /// 标记事件的状态，
        ///     EVENT_DEALED:事件处理
        ///     EVENT_INGNORE"：事件忽略
        ///     EVENT_DEL:事件删除
        ///     EVENT_ADD_WHITE:事件加白
        ///     EVENT_PENDING: 事件待处理
        /// 	EVENT_ISOLATE_CONTAINER: 隔离容器
        /// 	EVENT_RESOTRE_CONTAINER: 恢复容器
        public let status: String

        /// 事件备注
        public let remark: String?

        /// 是否后续自动隔离相同MD5文件
        public let autoIsolate: Bool?

        public init(eventIdSet: [String], status: String, remark: String? = nil, autoIsolate: Bool? = nil) {
            self.eventIdSet = eventIdSet
            self.status = status
            self.remark = remark
            self.autoIsolate = autoIsolate
        }

        enum CodingKeys: String, CodingKey {
            case eventIdSet = "EventIdSet"
            case status = "Status"
            case remark = "Remark"
            case autoIsolate = "AutoIsolate"
        }
    }

    /// ModifyVirusFileStatus返回参数结构体
    public struct ModifyVirusFileStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 运行时更新木马文件事件状态
    @inlinable @discardableResult
    public func modifyVirusFileStatus(_ input: ModifyVirusFileStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVirusFileStatusResponse> {
        self.client.execute(action: "ModifyVirusFileStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时更新木马文件事件状态
    @inlinable @discardableResult
    public func modifyVirusFileStatus(_ input: ModifyVirusFileStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVirusFileStatusResponse {
        try await self.client.execute(action: "ModifyVirusFileStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时更新木马文件事件状态
    @inlinable @discardableResult
    public func modifyVirusFileStatus(eventIdSet: [String], status: String, remark: String? = nil, autoIsolate: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyVirusFileStatusResponse> {
        self.modifyVirusFileStatus(.init(eventIdSet: eventIdSet, status: status, remark: remark, autoIsolate: autoIsolate), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时更新木马文件事件状态
    @inlinable @discardableResult
    public func modifyVirusFileStatus(eventIdSet: [String], status: String, remark: String? = nil, autoIsolate: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyVirusFileStatusResponse {
        try await self.modifyVirusFileStatus(.init(eventIdSet: eventIdSet, status: status, remark: remark, autoIsolate: autoIsolate), region: region, logger: logger, on: eventLoop)
    }
}
