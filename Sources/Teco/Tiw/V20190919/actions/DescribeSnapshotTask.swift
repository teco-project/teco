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
    /// DescribeSnapshotTask请求参数结构体
    public struct DescribeSnapshotTaskRequest: TCRequest {
        /// 查询任务ID
        public let taskID: String

        /// 任务SdkAppId
        public let sdkAppId: UInt64

        public init(taskID: String, sdkAppId: UInt64) {
            self.taskID = taskID
            self.sdkAppId = sdkAppId
        }

        enum CodingKeys: String, CodingKey {
            case taskID = "TaskID"
            case sdkAppId = "SdkAppId"
        }
    }

    /// DescribeSnapshotTask返回参数结构体
    public struct DescribeSnapshotTaskResponse: TCResponse {
        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskID: String?

        /// 任务状态
        /// Running - 任务执行中
        /// Finished - 任务已结束
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 任务创建时间，单位s
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: UInt64?

        /// 任务完成时间，单位s
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let finishTime: UInt64?

        /// 任务结果信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: SnapshotResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskID = "TaskID"
            case status = "Status"
            case createTime = "CreateTime"
            case finishTime = "FinishTime"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 获取白板板书生成任务信息
    ///
    /// 获取指定白板板书生成任务信息
    @inlinable
    public func describeSnapshotTask(_ input: DescribeSnapshotTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotTaskResponse> {
        self.client.execute(action: "DescribeSnapshotTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取白板板书生成任务信息
    ///
    /// 获取指定白板板书生成任务信息
    @inlinable
    public func describeSnapshotTask(_ input: DescribeSnapshotTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotTaskResponse {
        try await self.client.execute(action: "DescribeSnapshotTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取白板板书生成任务信息
    ///
    /// 获取指定白板板书生成任务信息
    @inlinable
    public func describeSnapshotTask(taskID: String, sdkAppId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSnapshotTaskResponse> {
        self.describeSnapshotTask(.init(taskID: taskID, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取白板板书生成任务信息
    ///
    /// 获取指定白板板书生成任务信息
    @inlinable
    public func describeSnapshotTask(taskID: String, sdkAppId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSnapshotTaskResponse {
        try await self.describeSnapshotTask(.init(taskID: taskID, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }
}
