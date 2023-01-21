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

extension Gme {
    /// DescribeAgeDetectTask请求参数结构体
    public struct DescribeAgeDetectTaskRequest: TCRequestModel {
        /// 应用id
        public let bizId: Int64

        /// 创建年龄语音识别任务时返回的taskid
        public let taskId: String

        public init(bizId: Int64, taskId: String) {
            self.bizId = bizId
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case taskId = "TaskId"
        }
    }

    /// DescribeAgeDetectTask返回参数结构体
    public struct DescribeAgeDetectTaskResponse: TCResponseModel {
        /// 任务ID
        public let taskId: String

        /// 语音检测返回。Results 字段是 JSON 数组，每一个元素包含：
        /// DataId： 请求中对应的 DataId。
        /// Url ：该请求中对应的 Url。
        /// Status ：子任务状态，0:已创建，1:运行中，2:已完成，3:任务异常，4:任务超时。
        /// Age ：子任务完成后的结果，0:成年人，1:未成年人，100:未知结果。
        public let results: [AgeDetectTaskResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case results = "Results"
            case requestId = "RequestId"
        }
    }

    /// 查询年龄语音识别任务结果
    ///
    /// 查询年龄语音识别任务结果，请求频率10次/秒。该接口目前通过白名单开放试用，如有需求，请提交工单申请。
    @inlinable
    public func describeAgeDetectTask(_ input: DescribeAgeDetectTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgeDetectTaskResponse> {
        self.client.execute(action: "DescribeAgeDetectTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询年龄语音识别任务结果
    ///
    /// 查询年龄语音识别任务结果，请求频率10次/秒。该接口目前通过白名单开放试用，如有需求，请提交工单申请。
    @inlinable
    public func describeAgeDetectTask(_ input: DescribeAgeDetectTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgeDetectTaskResponse {
        try await self.client.execute(action: "DescribeAgeDetectTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询年龄语音识别任务结果
    ///
    /// 查询年龄语音识别任务结果，请求频率10次/秒。该接口目前通过白名单开放试用，如有需求，请提交工单申请。
    @inlinable
    public func describeAgeDetectTask(bizId: Int64, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgeDetectTaskResponse> {
        self.describeAgeDetectTask(DescribeAgeDetectTaskRequest(bizId: bizId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询年龄语音识别任务结果
    ///
    /// 查询年龄语音识别任务结果，请求频率10次/秒。该接口目前通过白名单开放试用，如有需求，请提交工单申请。
    @inlinable
    public func describeAgeDetectTask(bizId: Int64, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgeDetectTaskResponse {
        try await self.describeAgeDetectTask(DescribeAgeDetectTaskRequest(bizId: bizId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
