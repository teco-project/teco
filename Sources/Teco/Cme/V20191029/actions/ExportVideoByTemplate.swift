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

extension Cme {
    /// ExportVideoByTemplate请求参数结构体
    public struct ExportVideoByTemplateRequest: TCRequest {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 视频编辑模板  Id。
        public let templateId: String

        /// 导出视频预设配置 Id，推荐优先使用下面的默认预设配置 Id，有其他需求可通过接口定制预设配置。
        /// - 10：分辨率为 480P，输出视频格式为 MP4；
        /// - 11：分辨率为 720P，输出视频格式为 MP4；
        /// - 12：分辨率为 1080P，输出视频格式为 MP4。
        public let definition: Int64

        /// 导出目标，指定导出视频的目标媒资库，可取值有：
        /// - CME：多媒体创作引擎，即导出为多媒体创作引擎媒资库，此导出目标在云点播媒资库依然可见；
        /// - VOD：云点播，即导出为云点播媒资库，此导出目标在多媒体创作引擎媒资库将不可见。
        public let exportDestination: String

        /// 需要替换的素材信息。
        public let slotReplacements: [SlotReplacementInfo]?

        /// 导出的多媒体创作引擎媒资信息。当导出目标为 CME 时必填。
        public let cmeExportInfo: CMEExportInfo?

        /// 导出的云点播媒资信息。当导出目标为 VOD 时必填。
        public let vodExportInfo: VODExportInfo?

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，无权限限制。如果指定操作者，则操作者需要有替换媒体及剪辑模板的权限。
        public let `operator`: String?

        public init(platform: String, templateId: String, definition: Int64, exportDestination: String, slotReplacements: [SlotReplacementInfo]? = nil, cmeExportInfo: CMEExportInfo? = nil, vodExportInfo: VODExportInfo? = nil, operator: String? = nil) {
            self.platform = platform
            self.templateId = templateId
            self.definition = definition
            self.exportDestination = exportDestination
            self.slotReplacements = slotReplacements
            self.cmeExportInfo = cmeExportInfo
            self.vodExportInfo = vodExportInfo
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case templateId = "TemplateId"
            case definition = "Definition"
            case exportDestination = "ExportDestination"
            case slotReplacements = "SlotReplacements"
            case cmeExportInfo = "CMEExportInfo"
            case vodExportInfo = "VODExportInfo"
            case `operator` = "Operator"
        }
    }

    /// ExportVideoByTemplate返回参数结构体
    public struct ExportVideoByTemplateResponse: TCResponse {
        /// 导出任务 Id。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 使用视频剪辑模板导出视频
    ///
    /// 使用视频剪辑模板直接导出视频。
    @inlinable
    public func exportVideoByTemplate(_ input: ExportVideoByTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportVideoByTemplateResponse> {
        self.client.execute(action: "ExportVideoByTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 使用视频剪辑模板导出视频
    ///
    /// 使用视频剪辑模板直接导出视频。
    @inlinable
    public func exportVideoByTemplate(_ input: ExportVideoByTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVideoByTemplateResponse {
        try await self.client.execute(action: "ExportVideoByTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 使用视频剪辑模板导出视频
    ///
    /// 使用视频剪辑模板直接导出视频。
    @inlinable
    public func exportVideoByTemplate(platform: String, templateId: String, definition: Int64, exportDestination: String, slotReplacements: [SlotReplacementInfo]? = nil, cmeExportInfo: CMEExportInfo? = nil, vodExportInfo: VODExportInfo? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportVideoByTemplateResponse> {
        self.exportVideoByTemplate(.init(platform: platform, templateId: templateId, definition: definition, exportDestination: exportDestination, slotReplacements: slotReplacements, cmeExportInfo: cmeExportInfo, vodExportInfo: vodExportInfo, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 使用视频剪辑模板导出视频
    ///
    /// 使用视频剪辑模板直接导出视频。
    @inlinable
    public func exportVideoByTemplate(platform: String, templateId: String, definition: Int64, exportDestination: String, slotReplacements: [SlotReplacementInfo]? = nil, cmeExportInfo: CMEExportInfo? = nil, vodExportInfo: VODExportInfo? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVideoByTemplateResponse {
        try await self.exportVideoByTemplate(.init(platform: platform, templateId: templateId, definition: definition, exportDestination: exportDestination, slotReplacements: slotReplacements, cmeExportInfo: cmeExportInfo, vodExportInfo: vodExportInfo, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
