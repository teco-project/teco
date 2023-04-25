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

extension Ccc {
    /// DescribeAutoCalloutTask请求参数结构体
    public struct DescribeAutoCalloutTaskRequest: TCRequestModel {
        /// 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        public let sdkAppId: UInt64

        /// 任务Id
        public let taskId: UInt64

        public init(sdkAppId: UInt64, taskId: UInt64) {
            self.sdkAppId = sdkAppId
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case taskId = "TaskId"
        }
    }

    /// DescribeAutoCalloutTask返回参数结构体
    public struct DescribeAutoCalloutTaskResponse: TCResponseModel {
        /// 任务名
        public let name: String

        /// 任务描述
        public let description: String

        /// 任务起始时间戳
        public let notBefore: Int64

        /// 任务结束时间戳
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let notAfter: Int64?

        /// 主叫列表
        public let callers: [String]

        /// 被叫信息列表
        public let callees: [AutoCalloutTaskCalleeInfo]

        /// 任务使用的IvrId
        public let ivrId: UInt64

        /// 任务状态 0初始 1运行中 2已完成 3结束中 4已终止
        public let state: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case description = "Description"
            case notBefore = "NotBefore"
            case notAfter = "NotAfter"
            case callers = "Callers"
            case callees = "Callees"
            case ivrId = "IvrId"
            case state = "State"
            case requestId = "RequestId"
        }
    }

    /// 查询自动外呼任务详情
    @inlinable
    public func describeAutoCalloutTask(_ input: DescribeAutoCalloutTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoCalloutTaskResponse> {
        self.client.execute(action: "DescribeAutoCalloutTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询自动外呼任务详情
    @inlinable
    public func describeAutoCalloutTask(_ input: DescribeAutoCalloutTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoCalloutTaskResponse {
        try await self.client.execute(action: "DescribeAutoCalloutTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询自动外呼任务详情
    @inlinable
    public func describeAutoCalloutTask(sdkAppId: UInt64, taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAutoCalloutTaskResponse> {
        self.describeAutoCalloutTask(.init(sdkAppId: sdkAppId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询自动外呼任务详情
    @inlinable
    public func describeAutoCalloutTask(sdkAppId: UInt64, taskId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAutoCalloutTaskResponse {
        try await self.describeAutoCalloutTask(.init(sdkAppId: sdkAppId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
