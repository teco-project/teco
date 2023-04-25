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

extension Gme {
    /// StopRecord请求参数结构体
    public struct StopRecordRequest: TCRequestModel {
        /// 任务ID。
        public let taskId: UInt64

        /// 应用ID。
        public let bizId: UInt64

        public init(taskId: UInt64, bizId: UInt64) {
            self.taskId = taskId
            self.bizId = bizId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case bizId = "BizId"
        }
    }

    /// StopRecord返回参数结构体
    public struct StopRecordResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停止录制
    @inlinable @discardableResult
    public func stopRecord(_ input: StopRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopRecordResponse> {
        self.client.execute(action: "StopRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止录制
    @inlinable @discardableResult
    public func stopRecord(_ input: StopRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopRecordResponse {
        try await self.client.execute(action: "StopRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止录制
    @inlinable @discardableResult
    public func stopRecord(taskId: UInt64, bizId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopRecordResponse> {
        self.stopRecord(.init(taskId: taskId, bizId: bizId), region: region, logger: logger, on: eventLoop)
    }

    /// 停止录制
    @inlinable @discardableResult
    public func stopRecord(taskId: UInt64, bizId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopRecordResponse {
        try await self.stopRecord(.init(taskId: taskId, bizId: bizId), region: region, logger: logger, on: eventLoop)
    }
}
