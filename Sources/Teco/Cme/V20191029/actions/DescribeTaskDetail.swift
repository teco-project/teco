//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cme {
    /// DescribeTaskDetail请求参数结构体
    public struct DescribeTaskDetailRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 任务 Id。
        public let taskId: String

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以获取任意任务信息。如果指定操作者，则操作者需要是任务发起者。
        public let `operator`: String?

        public init(platform: String, taskId: String, operator: String? = nil) {
            self.platform = platform
            self.taskId = taskId
            self.`operator` = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case taskId = "TaskId"
            case `operator` = "Operator"
        }
    }

    /// DescribeTaskDetail返回参数结构体
    public struct DescribeTaskDetailResponse: TCResponseModel {
        /// 任务状态，取值有：
        /// <li>PROCESSING：处理中：</li>
        /// <li>SUCCESS：成功；</li>
        /// <li>FAIL：失败。</li>
        public let status: String

        /// 任务进度，取值为：0~100。
        public let progress: UInt64

        /// 错误码。
        /// <li>0：成功；</li>
        /// <li>其他值：失败。</li>
        public let errCode: UInt64

        /// 错误信息。
        public let errMsg: String

        /// 任务类型，取值有：
        /// <li>VIDEO_EDIT_PROJECT_EXPORT：视频编辑项目导出。</li>
        public let taskType: String

        /// 导出项目输出信息。仅当 TaskType 为 VIDEO_EDIT_PROJECT_EXPORT 时有效。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let videoEditProjectOutput: VideoEditProjectOutput?

        /// 创建时间，格式按照 ISO 8601 标准表示。
        public let createTime: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case progress = "Progress"
            case errCode = "ErrCode"
            case errMsg = "ErrMsg"
            case taskType = "TaskType"
            case videoEditProjectOutput = "VideoEditProjectOutput"
            case createTime = "CreateTime"
            case requestId = "RequestId"
        }
    }

    /// 获取任务详情
    ///
    /// 获取任务详情信息，包含下面几个部分：
    /// <li>任务基础信息：包括任务状态、错误信息、创建时间等；</li>
    /// <li>导出项目输出信息：包括输出的素材 Id 等。</li>
    @inlinable
    public func describeTaskDetail(_ input: DescribeTaskDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskDetailResponse> {
        self.client.execute(action: "DescribeTaskDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取任务详情
    ///
    /// 获取任务详情信息，包含下面几个部分：
    /// <li>任务基础信息：包括任务状态、错误信息、创建时间等；</li>
    /// <li>导出项目输出信息：包括输出的素材 Id 等。</li>
    @inlinable
    public func describeTaskDetail(_ input: DescribeTaskDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskDetailResponse {
        try await self.client.execute(action: "DescribeTaskDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取任务详情
    ///
    /// 获取任务详情信息，包含下面几个部分：
    /// <li>任务基础信息：包括任务状态、错误信息、创建时间等；</li>
    /// <li>导出项目输出信息：包括输出的素材 Id 等。</li>
    @inlinable
    public func describeTaskDetail(platform: String, taskId: String, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskDetailResponse> {
        self.describeTaskDetail(DescribeTaskDetailRequest(platform: platform, taskId: taskId, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 获取任务详情
    ///
    /// 获取任务详情信息，包含下面几个部分：
    /// <li>任务基础信息：包括任务状态、错误信息、创建时间等；</li>
    /// <li>导出项目输出信息：包括输出的素材 Id 等。</li>
    @inlinable
    public func describeTaskDetail(platform: String, taskId: String, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskDetailResponse {
        try await self.describeTaskDetail(DescribeTaskDetailRequest(platform: platform, taskId: taskId, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
