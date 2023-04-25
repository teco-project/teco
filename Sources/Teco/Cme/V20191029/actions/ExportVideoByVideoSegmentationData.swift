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

extension Cme {
    /// ExportVideoByVideoSegmentationData请求参数结构体
    public struct ExportVideoByVideoSegmentationDataRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 视频拆条项目 Id 。
        public let projectId: String

        /// 指定需要导出的智能拆条片段的组 Id 。
        public let segmentGroupId: String

        /// 指定需要导出的智能拆条片段 Id  集合。
        public let segmentIds: [String]

        /// 导出模板 Id，目前不支持自定义创建，只支持下面的预置模板 Id。
        /// <li>10：分辨率为 480P，输出视频格式为 MP4；</li>
        /// <li>11：分辨率为 720P，输出视频格式为 MP4；</li>
        /// <li>12：分辨率为 1080P，输出视频格式为 MP4。</li>
        public let definition: UInt64

        /// 导出目标，指定导出视频的目标媒资库，可取值有：
        /// <li>CME：多媒体创作引擎，即导出为多媒体创作引擎媒资库，此导出目标在云点播媒资库依然可见；</li>
        /// <li>VOD：云点播，即导出为云点播媒资库，此导出目标在多媒体创作引擎媒资库将不可见。</li>
        public let exportDestination: String

        /// 导出的多媒体创作引擎媒体信息。当导出目标为 CME 时必填。
        public let cmeExportInfo: CMEExportInfo?

        /// 导出的云点播媒资信息。当导出目标为 VOD 时必填。
        public let vodExportInfo: VODExportInfo?

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以操作任意智能拆条项目。如果指定操作者，则操作者必须为项目所有。
        public let `operator`: String?

        public init(platform: String, projectId: String, segmentGroupId: String, segmentIds: [String], definition: UInt64, exportDestination: String, cmeExportInfo: CMEExportInfo? = nil, vodExportInfo: VODExportInfo? = nil, operator: String? = nil) {
            self.platform = platform
            self.projectId = projectId
            self.segmentGroupId = segmentGroupId
            self.segmentIds = segmentIds
            self.definition = definition
            self.exportDestination = exportDestination
            self.cmeExportInfo = cmeExportInfo
            self.vodExportInfo = vodExportInfo
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case projectId = "ProjectId"
            case segmentGroupId = "SegmentGroupId"
            case segmentIds = "SegmentIds"
            case definition = "Definition"
            case exportDestination = "ExportDestination"
            case cmeExportInfo = "CMEExportInfo"
            case vodExportInfo = "VODExportInfo"
            case `operator` = "Operator"
        }
    }

    /// ExportVideoByVideoSegmentationData返回参数结构体
    public struct ExportVideoByVideoSegmentationDataResponse: TCResponseModel {
        /// 任务 Id。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 使用视频智能拆条数据导出视频
    ///
    /// 使用视频智能拆条数据导出视频，将指定的视频拆条片段导出为一个视频(内测中，请勿使用)。
    @inlinable
    public func exportVideoByVideoSegmentationData(_ input: ExportVideoByVideoSegmentationDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportVideoByVideoSegmentationDataResponse> {
        self.client.execute(action: "ExportVideoByVideoSegmentationData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 使用视频智能拆条数据导出视频
    ///
    /// 使用视频智能拆条数据导出视频，将指定的视频拆条片段导出为一个视频(内测中，请勿使用)。
    @inlinable
    public func exportVideoByVideoSegmentationData(_ input: ExportVideoByVideoSegmentationDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVideoByVideoSegmentationDataResponse {
        try await self.client.execute(action: "ExportVideoByVideoSegmentationData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 使用视频智能拆条数据导出视频
    ///
    /// 使用视频智能拆条数据导出视频，将指定的视频拆条片段导出为一个视频(内测中，请勿使用)。
    @inlinable
    public func exportVideoByVideoSegmentationData(platform: String, projectId: String, segmentGroupId: String, segmentIds: [String], definition: UInt64, exportDestination: String, cmeExportInfo: CMEExportInfo? = nil, vodExportInfo: VODExportInfo? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportVideoByVideoSegmentationDataResponse> {
        self.exportVideoByVideoSegmentationData(.init(platform: platform, projectId: projectId, segmentGroupId: segmentGroupId, segmentIds: segmentIds, definition: definition, exportDestination: exportDestination, cmeExportInfo: cmeExportInfo, vodExportInfo: vodExportInfo, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 使用视频智能拆条数据导出视频
    ///
    /// 使用视频智能拆条数据导出视频，将指定的视频拆条片段导出为一个视频(内测中，请勿使用)。
    @inlinable
    public func exportVideoByVideoSegmentationData(platform: String, projectId: String, segmentGroupId: String, segmentIds: [String], definition: UInt64, exportDestination: String, cmeExportInfo: CMEExportInfo? = nil, vodExportInfo: VODExportInfo? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVideoByVideoSegmentationDataResponse {
        try await self.exportVideoByVideoSegmentationData(.init(platform: platform, projectId: projectId, segmentGroupId: segmentGroupId, segmentIds: segmentIds, definition: definition, exportDestination: exportDestination, cmeExportInfo: cmeExportInfo, vodExportInfo: vodExportInfo, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
