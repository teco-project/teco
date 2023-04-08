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

extension Vm {
    /// DescribeTaskDetail请求参数结构体
    public struct DescribeTaskDetailRequest: TCRequestModel {
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
    public struct DescribeTaskDetailResponse: TCResponseModel {
        /// 该字段用于返回创建视频审核任务后返回的任务ID（在Results参数中），用于标识需要查询任务详情的审核任务。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: String?

        /// 该字段用于返回调用视频审核接口时传入的数据ID参数，方便数据的辨别和管理。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataId: String?

        /// 该字段用于返回调用视频审核接口时传入的BizType参数，方便数据的辨别和管理。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bizType: String?

        /// 该字段用于返回调用视频审核接口时传入的TaskInput参数中的任务名称，方便任务的识别与管理。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 该字段用于返回所查询内容的任务状态。
        /// <br>取值：**FINISH**（任务已完成）、**PENDING** （任务等待中）、**RUNNING** （任务进行中）、**ERROR** （任务出错）、**CANCELLED** （任务已取消）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: String?

        /// 该字段用于返回调用视频审核接口时输入的视频审核类型，取值为：**VIDEO**（点播视频）和**LIVE_VIDEO**（直播视频），默认值为VIDEO。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?

        /// 该字段用于返回基于恶意标签的后续操作建议。当您获取到判定结果后，返回值表示系统推荐的后续操作；建议您按照业务所需，对不同违规类型与建议值进行处理。<br>返回值：**Block**：建议屏蔽，**Review** ：建议人工复审，**Pass**：建议通过
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let suggestion: String?

        /// 该字段用于返回检测结果所对应的恶意标签。<br>返回值：**Porn**：色情，**Abuse**：谩骂，**Ad**：广告，**Custom**：自定义违规；以及其他令人反感、不安全或不适宜的内容类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let labels: [TaskLabel]?

        /// 该字段用于返回输入媒体文件的详细信息，包括编解码格式、分片时长等信息。详细内容敬请参考MediaInfo数据结构的描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let mediaInfo: MediaInfo?

        /// 该字段用于返回审核服务的媒体内容信息，主要包括传入文件类型和访问地址。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inputInfo: InputInfo?

        /// 该字段用于返回被查询任务创建的时间，格式采用 ISO 8601标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createdAt: String?

        /// 该字段用于返回被查询任务最后更新时间，格式采用 ISO 8601标准。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updatedAt: String?

        /// 在秒后重试
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tryInSeconds: Int64?

        /// 该字段用于返回视频中截帧审核的结果，详细返回内容敬请参考ImageSegments数据结构的描述。<br>备注：数据有效期为24小时，如需要延长存储时间，请在已配置的COS储存桶中设置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageSegments: [ImageSegments]?

        /// 该字段用于返回视频中音频审核的结果，详细返回内容敬请参考AudioSegments数据结构的描述。<br>备注：数据有效期为24小时，如需要延长存储时间，请在已配置的COS储存桶中设置。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let audioSegments: [AudioSegments]?

        /// 当任务状态为Error时，返回对应错误的类型，取值：**DECODE_ERROR**: 解码失败。（输入资源中可能包含无法解码的视频）
        /// **URL_ERROR**：下载地址验证失败。
        /// **TIMEOUT_ERROR**：处理超时。任务状态非Error时默认返回为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorType: String?

        /// 当任务状态为Error时，该字段用于返回对应错误的详细描述，任务状态非Error时默认返回为空。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorDescription: String?

        /// 该字段用于返回检测结果所对应的标签。如果未命中恶意，返回Normal，如果命中恶意，则返回Labels中优先级最高的标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let label: String?

        /// 该字段用于返回音频文件识别出的对应文本内容，最大支持**前1000个字符**。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let audioText: String?

        /// 该字段用于返回音频文件识别出的对应文本内容。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let asrs: [RcbAsr]?

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
            case imageSegments = "ImageSegments"
            case audioSegments = "AudioSegments"
            case errorType = "ErrorType"
            case errorDescription = "ErrorDescription"
            case label = "Label"
            case audioText = "AudioText"
            case asrs = "Asrs"
            case requestId = "RequestId"
        }
    }

    /// 查看任务详情
    ///
    /// 查看任务详情DescribeTaskDetail
    @inlinable
    public func describeTaskDetail(_ input: DescribeTaskDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskDetailResponse> {
        self.client.execute(action: "DescribeTaskDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看任务详情
    ///
    /// 查看任务详情DescribeTaskDetail
    @inlinable
    public func describeTaskDetail(_ input: DescribeTaskDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskDetailResponse {
        try await self.client.execute(action: "DescribeTaskDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看任务详情
    ///
    /// 查看任务详情DescribeTaskDetail
    @inlinable
    public func describeTaskDetail(taskId: String, showAllSegments: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskDetailResponse> {
        self.describeTaskDetail(.init(taskId: taskId, showAllSegments: showAllSegments), region: region, logger: logger, on: eventLoop)
    }

    /// 查看任务详情
    ///
    /// 查看任务详情DescribeTaskDetail
    @inlinable
    public func describeTaskDetail(taskId: String, showAllSegments: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskDetailResponse {
        try await self.describeTaskDetail(.init(taskId: taskId, showAllSegments: showAllSegments), region: region, logger: logger, on: eventLoop)
    }
}
