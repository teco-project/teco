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

extension Oceanus {
    /// TriggerJobSavepoint请求参数结构体
    public struct TriggerJobSavepointRequest: TCRequest {
        /// 作业 SerialId
        public let jobId: String

        /// 描述
        public let description: String?

        /// 工作空间 SerialId
        public let workSpaceId: String?

        public init(jobId: String, description: String? = nil, workSpaceId: String? = nil) {
            self.jobId = jobId
            self.description = description
            self.workSpaceId = workSpaceId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case description = "Description"
            case workSpaceId = "WorkSpaceId"
        }
    }

    /// TriggerJobSavepoint返回参数结构体
    public struct TriggerJobSavepointResponse: TCResponse {
        /// 是否成功
        public let savepointTrigger: Bool

        /// 错误消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorMsg: String?

        /// 快照路径
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let finalSavepointPath: String?

        /// 快照 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let savepointId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case savepointTrigger = "SavepointTrigger"
            case errorMsg = "ErrorMsg"
            case finalSavepointPath = "FinalSavepointPath"
            case savepointId = "SavepointId"
            case requestId = "RequestId"
        }
    }

    /// 触发Savepoint
    @inlinable
    public func triggerJobSavepoint(_ input: TriggerJobSavepointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TriggerJobSavepointResponse> {
        self.client.execute(action: "TriggerJobSavepoint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 触发Savepoint
    @inlinable
    public func triggerJobSavepoint(_ input: TriggerJobSavepointRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TriggerJobSavepointResponse {
        try await self.client.execute(action: "TriggerJobSavepoint", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 触发Savepoint
    @inlinable
    public func triggerJobSavepoint(jobId: String, description: String? = nil, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TriggerJobSavepointResponse> {
        self.triggerJobSavepoint(.init(jobId: jobId, description: description, workSpaceId: workSpaceId), region: region, logger: logger, on: eventLoop)
    }

    /// 触发Savepoint
    @inlinable
    public func triggerJobSavepoint(jobId: String, description: String? = nil, workSpaceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TriggerJobSavepointResponse {
        try await self.triggerJobSavepoint(.init(jobId: jobId, description: description, workSpaceId: workSpaceId), region: region, logger: logger, on: eventLoop)
    }
}
