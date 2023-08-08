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

extension Ocr {
    /// GetTaskState请求参数结构体
    public struct GetTaskStateRequest: TCRequestModel {
        /// 智慧表单任务唯一身份ID
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// GetTaskState返回参数结构体
    public struct GetTaskStateResponse: TCResponseModel {
        /// 1:任务识别完成，还未提交
        /// 2:任务已手动关闭
        /// 3:任务已提交
        /// 4:任务识别中
        /// 5:超时：任务超过了可操作的24H时限
        /// 6:任务识别失败
        public let taskState: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskState = "TaskState"
            case requestId = "RequestId"
        }
    }

    /// 查询智慧表单任务状态
    ///
    /// 支持查询智能表单录入任务的状态。本产品免费公测中，您可以点击demo（超链接：https://ocr.smartform.cloud.tencent.com/）试用，如需购买请与商务团队联系。
    @inlinable
    public func getTaskState(_ input: GetTaskStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTaskStateResponse> {
        self.client.execute(action: "GetTaskState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询智慧表单任务状态
    ///
    /// 支持查询智能表单录入任务的状态。本产品免费公测中，您可以点击demo（超链接：https://ocr.smartform.cloud.tencent.com/）试用，如需购买请与商务团队联系。
    @inlinable
    public func getTaskState(_ input: GetTaskStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTaskStateResponse {
        try await self.client.execute(action: "GetTaskState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询智慧表单任务状态
    ///
    /// 支持查询智能表单录入任务的状态。本产品免费公测中，您可以点击demo（超链接：https://ocr.smartform.cloud.tencent.com/）试用，如需购买请与商务团队联系。
    @inlinable
    public func getTaskState(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTaskStateResponse> {
        self.getTaskState(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询智慧表单任务状态
    ///
    /// 支持查询智能表单录入任务的状态。本产品免费公测中，您可以点击demo（超链接：https://ocr.smartform.cloud.tencent.com/）试用，如需购买请与商务团队联系。
    @inlinable
    public func getTaskState(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTaskStateResponse {
        try await self.getTaskState(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
