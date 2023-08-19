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

extension Ams {
    /// DescribeTaskDetail请求参数结构体
    public struct DescribeTaskDetailRequest: TCRequest {
        /// 任务ID，创建任务后返回的TaskId字段
        public let taskId: String

        /// 是否展示所有分片，默认只展示命中规则的分片
        public let showAllSegments: Bool?

        public init(taskId: String, showAllSegments: Bool? = nil) {
            self.taskId = taskId
            self.showAllSegments = showAllSegments
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case showAllSegments = "ShowAllSegments"
        }
    }

    /// DescribeTaskDetail返回参数结构体
    public struct DescribeTaskDetailResponse: TCResponse {
        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?

        /// 审核时传入的数据Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataId: String?

        /// 业务类型，用于调用识别策略模板；
        /// （暂未发布功能，敬请期待）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bizType: String?

        /// 任务名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 查询内容审核任务的状态，可选值：
        /// FINISH 已完成
        /// PENDING 等待中
        /// RUNNING 进行中
        /// ERROR 出错
        /// CANCELLED 已取消
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 任务类型：可选AUDIO（点播音频），LIVE_AUDIO（直播音频）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?

        /// 智能审核服务对于内容违规类型的等级，可选值：
        /// Pass 建议通过；
        /// Reveiw 建议复审；
        /// Block 建议屏蔽；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestion: String?

        /// 智能审核服务对于内容违规类型的判断，详见返回值列表
        /// 如：Label：Porn（色情）；
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let labels: [TaskLabel]?

        /// 传入媒体的解码信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mediaInfo: MediaInfo?

        /// 审核任务的信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inputInfo: InputInfo?

        /// 审核任务的创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createdAt: String?

        /// 审核任务的更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updatedAt: String?

        /// 在N秒后重试
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tryInSeconds: Int64?

        /// 视频/音频审核中的音频结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let audioSegments: [AudioSegments]?

        /// 视频审核中的图片结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageSegments: [ImageSegments]?

        /// 音频识别总文本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let audioText: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case dataId = "DataId"
            case bizType = "BizType"
            case name = "Name"
            case status = "Status"
            case type = "Type"
            case suggestion = "Suggestion"
            case labels = "Labels"
            case mediaInfo = "MediaInfo"
            case inputInfo = "InputInfo"
            case createdAt = "CreatedAt"
            case updatedAt = "UpdatedAt"
            case tryInSeconds = "TryInSeconds"
            case audioSegments = "AudioSegments"
            case imageSegments = "ImageSegments"
            case audioText = "AudioText"
            case requestId = "RequestId"
        }
    }

    /// 查看任务详情
    @inlinable
    public func describeTaskDetail(_ input: DescribeTaskDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskDetailResponse> {
        self.client.execute(action: "DescribeTaskDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看任务详情
    @inlinable
    public func describeTaskDetail(_ input: DescribeTaskDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskDetailResponse {
        try await self.client.execute(action: "DescribeTaskDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看任务详情
    @inlinable
    public func describeTaskDetail(taskId: String, showAllSegments: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskDetailResponse> {
        self.describeTaskDetail(.init(taskId: taskId, showAllSegments: showAllSegments), region: region, logger: logger, on: eventLoop)
    }

    /// 查看任务详情
    @inlinable
    public func describeTaskDetail(taskId: String, showAllSegments: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskDetailResponse {
        try await self.describeTaskDetail(.init(taskId: taskId, showAllSegments: showAllSegments), region: region, logger: logger, on: eventLoop)
    }
}
