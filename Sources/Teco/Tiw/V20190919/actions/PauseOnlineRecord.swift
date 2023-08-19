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

extension Tiw {
    /// PauseOnlineRecord请求参数结构体
    public struct PauseOnlineRecordRequest: TCRequest {
        /// 客户的SdkAppId
        public let sdkAppId: Int64

        /// 实时录制任务 Id
        public let taskId: String

        public init(sdkAppId: Int64, taskId: String) {
            self.sdkAppId = sdkAppId
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case taskId = "TaskId"
        }
    }

    /// PauseOnlineRecord返回参数结构体
    public struct PauseOnlineRecordResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 暂停实时录制
    @inlinable @discardableResult
    public func pauseOnlineRecord(_ input: PauseOnlineRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PauseOnlineRecordResponse> {
        self.client.execute(action: "PauseOnlineRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 暂停实时录制
    @inlinable @discardableResult
    public func pauseOnlineRecord(_ input: PauseOnlineRecordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PauseOnlineRecordResponse {
        try await self.client.execute(action: "PauseOnlineRecord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 暂停实时录制
    @inlinable @discardableResult
    public func pauseOnlineRecord(sdkAppId: Int64, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PauseOnlineRecordResponse> {
        self.pauseOnlineRecord(.init(sdkAppId: sdkAppId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 暂停实时录制
    @inlinable @discardableResult
    public func pauseOnlineRecord(sdkAppId: Int64, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PauseOnlineRecordResponse {
        try await self.pauseOnlineRecord(.init(sdkAppId: sdkAppId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
