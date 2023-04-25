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

extension Cr {
    /// DescribeTaskStatus请求参数结构体
    public struct DescribeTaskStatusRequest: TCRequestModel {
        /// 模块名，本接口取值：Task
        public let module: String

        /// 操作名，本接口取值：DescribeTaskStatus
        public let operation: String

        /// 任务ID，"上传文件"接口返回的DataResId，形如abc-xyz123
        public let taskId: String

        /// 实例ID，不传默认为系统分配的初始实例。
        public let instId: String?

        public init(module: String, operation: String, taskId: String, instId: String? = nil) {
            self.module = module
            self.operation = operation
            self.taskId = taskId
            self.instId = instId
        }

        enum CodingKeys: String, CodingKey {
            case module = "Module"
            case operation = "Operation"
            case taskId = "TaskId"
            case instId = "InstId"
        }
    }

    /// DescribeTaskStatus返回参数结构体
    public struct DescribeTaskStatusResponse: TCResponseModel {
        /// <p>任务结果：</p><ul style="margin-bottom:0px;"><li>处理中："Uploading Data."</li><li>上传成功："File Uploading Task Success."</li><li>上传失败：具体失败原因</li></ul>
        public let taskResult: String

        /// <p>任务类型：</p><ul style="margin-bottom:0px;"><li>到期/逾期提醒数据上传：002</li><li>到期/逾期提醒停拨数据上传：003</li><li>回访数据上传：004</li><li>回访停拨数据上传：005</li></ul>
        public let taskType: String

        /// 过滤文件下载链接，有过滤数据时才存在。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskFileUrl: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskResult = "TaskResult"
            case taskType = "TaskType"
            case taskFileUrl = "TaskFileUrl"
            case requestId = "RequestId"
        }
    }

    /// 获取任务状态
    ///
    /// 根据上传文件接口的输出参数DataResId，获取相关上传结果。
    @inlinable
    public func describeTaskStatus(_ input: DescribeTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskStatusResponse> {
        self.client.execute(action: "DescribeTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取任务状态
    ///
    /// 根据上传文件接口的输出参数DataResId，获取相关上传结果。
    @inlinable
    public func describeTaskStatus(_ input: DescribeTaskStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskStatusResponse {
        try await self.client.execute(action: "DescribeTaskStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取任务状态
    ///
    /// 根据上传文件接口的输出参数DataResId，获取相关上传结果。
    @inlinable
    public func describeTaskStatus(module: String, operation: String, taskId: String, instId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskStatusResponse> {
        self.describeTaskStatus(.init(module: module, operation: operation, taskId: taskId, instId: instId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取任务状态
    ///
    /// 根据上传文件接口的输出参数DataResId，获取相关上传结果。
    @inlinable
    public func describeTaskStatus(module: String, operation: String, taskId: String, instId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskStatusResponse {
        try await self.describeTaskStatus(.init(module: module, operation: operation, taskId: taskId, instId: instId), region: region, logger: logger, on: eventLoop)
    }
}
