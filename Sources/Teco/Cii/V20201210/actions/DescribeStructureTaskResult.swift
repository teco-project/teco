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

extension Cii {
    /// DescribeStructureTaskResult请求参数结构体
    public struct DescribeStructureTaskResultRequest: TCRequestModel {
        /// 结构化任务ID
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// DescribeStructureTaskResult返回参数结构体
    public struct DescribeStructureTaskResultResponse: TCResponseModel {
        /// 结果状态：
        /// 0：返回成功
        /// 1：结果未生成
        /// 2：结果生成失败
        public let status: UInt64

        /// 结构化识别结果数组，每个数组元素对应一个图片的结构化结果，顺序和输入参数的ImageList或FileList对应。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let results: [ResultObject]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case results = "Results"
            case requestId = "RequestId"
        }
    }

    /// 获取结构化结果接口
    ///
    /// 依据任务ID获取结构化结果接口。
    @inlinable
    public func describeStructureTaskResult(_ input: DescribeStructureTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStructureTaskResultResponse> {
        self.client.execute(action: "DescribeStructureTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取结构化结果接口
    ///
    /// 依据任务ID获取结构化结果接口。
    @inlinable
    public func describeStructureTaskResult(_ input: DescribeStructureTaskResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStructureTaskResultResponse {
        try await self.client.execute(action: "DescribeStructureTaskResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取结构化结果接口
    ///
    /// 依据任务ID获取结构化结果接口。
    @inlinable
    public func describeStructureTaskResult(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeStructureTaskResultResponse> {
        self.describeStructureTaskResult(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取结构化结果接口
    ///
    /// 依据任务ID获取结构化结果接口。
    @inlinable
    public func describeStructureTaskResult(taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeStructureTaskResultResponse {
        try await self.describeStructureTaskResult(.init(taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
