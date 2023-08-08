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

extension Vod {
    /// DescribeTaskDetail请求参数结构体
    public struct DescribeTaskDetailRequest: TCRequestModel {
        /// 视频处理任务的任务 ID。
        public let taskId: String

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        public init(taskId: String, subAppId: UInt64? = nil) {
            self.taskId = taskId
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case subAppId = "SubAppId"
        }
    }

    /// DescribeTaskDetail返回参数结构体
    public struct DescribeTaskDetailResponse: TCResponseModel {
        /// 任务类型，取值：
        /// <li>Procedure：视频处理任务；</li>
        /// <li>EditMedia：视频编辑任务；</li>
        /// <li>SplitMedia：视频拆条任务；</li>
        /// <li>ComposeMedia：制作媒体文件任务；</li>
        /// <li>WechatPublish：微信发布任务；</li>
        /// <li>WechatMiniProgramPublish：微信小程序视频发布任务；</li>
        /// <li>PullUpload：拉取上传媒体文件任务；</li>
        /// <li>FastClipMedia：快速剪辑任务；</li>
        /// <li>RemoveWatermarkTask：智能去除水印任务；</li>
        /// <li>DescribeFileAttributesTask：获取文件属性任务；</li>
        /// <li>RebuildMedia：音画质重生任务；</li>
        /// <li>ReviewAudioVideo：音视频审核任务；</li>
        /// <li>ExtractTraceWatermark：提取溯源水印任务；</li>
        /// <li>ExtractCopyRightWatermark：提取版权水印任务；</li>
        /// <li>QualityInspect：音画质检测任务。</li>
        public let taskType: String

        /// 任务状态，取值：
        /// <li>WAITING：等待中；</li>
        /// <li>PROCESSING：处理中；</li>
        /// <li>FINISH：已完成。</li>
        public let status: String

        /// 任务的创建时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        public let createTime: String

        /// 任务开始执行的时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        public let beginProcessTime: String

        /// 任务执行完毕的时间，采用 [ISO 日期格式](https://cloud.tencent.com/document/product/266/11732#I)。
        public let finishTime: String

        /// 视频处理任务信息，仅当 TaskType 为 Procedure，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let procedureTask: ProcedureTask?

        /// 视频编辑任务信息，仅当 TaskType 为 EditMedia，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let editMediaTask: EditMediaTask?

        /// 微信发布任务信息，仅当 TaskType 为 WechatPublish，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wechatPublishTask: WechatPublishTask?

        /// 制作媒体文件任务信息，仅当 TaskType 为 ComposeMedia，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let composeMediaTask: ComposeMediaTask?

        /// 视频拆条任务信息，仅当 TaskType 为 SplitMedia，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let splitMediaTask: SplitMediaTask?

        /// 微信小程序发布任务信息，仅当 TaskType 为 WechatMiniProgramPublish，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wechatMiniProgramPublishTask: WechatMiniProgramPublishTask?

        /// 拉取上传媒体文件任务信息，仅当 TaskType 为 PullUpload，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pullUploadTask: PullUploadTask?

        /// 视频转码任务信息，仅当 TaskType 为 Transcode，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let transcodeTask: TranscodeTask2017?

        /// 视频拼接任务信息，仅当 TaskType 为 Concat，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let concatTask: ConcatTask2017?

        /// 视频剪辑任务信息，仅当 TaskType 为 Clip，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clipTask: ClipTask2017?

        /// 截取雪碧图任务信息，仅当 TaskType 为 ImageSprite，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createImageSpriteTask: CreateImageSpriteTask2017?

        /// 视频指定时间点截图任务信息，仅当 TaskType 为 SnapshotByTimeOffset，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let snapshotByTimeOffsetTask: SnapshotByTimeOffsetTask2017?

        /// 智能去除水印任务信息，仅当 TaskType 为 RemoveWatermark，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let removeWatermarkTask: RemoveWatermarkTask?

        /// 音画质重生任务信息，仅当 TaskType 为 RebuildMedia，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rebuildMediaTask: RebuildMediaTask?

        /// 提取溯源水印任务信息，仅当 TaskType 为 ExtractTraceWatermark，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extractTraceWatermarkTask: ExtractTraceWatermarkTask?

        /// 提取版权水印任务信息，仅当 TaskType 为 ExtractCopyRightWatermark，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extractCopyRightWatermarkTask: ExtractCopyRightWatermarkTask?

        /// 音视频审核任务信息，仅当 TaskType 为 ReviewAudioVideo，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reviewAudioVideoTask: ReviewAudioVideoTask?

        /// 该字段已无效。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reduceMediaBitrateTask: ReduceMediaBitrateTask?

        /// 获取文件属性任务信息，仅当 TaskType 为 DescribeFileAttributes，该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let describeFileAttributesTask: DescribeFileAttributesTask?

        /// 音画质检测任务信息，仅当 TaskType 为 QualityInspect 时该字段有值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let qualityInspectTask: QualityInspectTask?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskType = "TaskType"
            case status = "Status"
            case createTime = "CreateTime"
            case beginProcessTime = "BeginProcessTime"
            case finishTime = "FinishTime"
            case procedureTask = "ProcedureTask"
            case editMediaTask = "EditMediaTask"
            case wechatPublishTask = "WechatPublishTask"
            case composeMediaTask = "ComposeMediaTask"
            case splitMediaTask = "SplitMediaTask"
            case wechatMiniProgramPublishTask = "WechatMiniProgramPublishTask"
            case pullUploadTask = "PullUploadTask"
            case transcodeTask = "TranscodeTask"
            case concatTask = "ConcatTask"
            case clipTask = "ClipTask"
            case createImageSpriteTask = "CreateImageSpriteTask"
            case snapshotByTimeOffsetTask = "SnapshotByTimeOffsetTask"
            case removeWatermarkTask = "RemoveWatermarkTask"
            case rebuildMediaTask = "RebuildMediaTask"
            case extractTraceWatermarkTask = "ExtractTraceWatermarkTask"
            case extractCopyRightWatermarkTask = "ExtractCopyRightWatermarkTask"
            case reviewAudioVideoTask = "ReviewAudioVideoTask"
            case reduceMediaBitrateTask = "ReduceMediaBitrateTask"
            case describeFileAttributesTask = "DescribeFileAttributesTask"
            case qualityInspectTask = "QualityInspectTask"
            case requestId = "RequestId"
        }
    }

    /// 查询任务详情
    ///
    /// 通过任务 ID 查询任务的执行状态和结果的详细信息（最多可以查询3天之内提交的任务）。
    @inlinable
    public func describeTaskDetail(_ input: DescribeTaskDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskDetailResponse> {
        self.client.execute(action: "DescribeTaskDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询任务详情
    ///
    /// 通过任务 ID 查询任务的执行状态和结果的详细信息（最多可以查询3天之内提交的任务）。
    @inlinable
    public func describeTaskDetail(_ input: DescribeTaskDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskDetailResponse {
        try await self.client.execute(action: "DescribeTaskDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询任务详情
    ///
    /// 通过任务 ID 查询任务的执行状态和结果的详细信息（最多可以查询3天之内提交的任务）。
    @inlinable
    public func describeTaskDetail(taskId: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskDetailResponse> {
        self.describeTaskDetail(.init(taskId: taskId, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询任务详情
    ///
    /// 通过任务 ID 查询任务的执行状态和结果的详细信息（最多可以查询3天之内提交的任务）。
    @inlinable
    public func describeTaskDetail(taskId: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskDetailResponse {
        try await self.describeTaskDetail(.init(taskId: taskId, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
