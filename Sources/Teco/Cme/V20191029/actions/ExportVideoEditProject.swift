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

extension Cme {
    /// ExportVideoEditProject请求参数结构体
    public struct ExportVideoEditProjectRequest: TCRequestModel {
        /// 平台名称，指定访问的平台。
        public let platform: String

        /// 项目 Id。
        public let projectId: String

        /// 视频编码配置 ID，支持自定义创建，推荐优先使用系统预置的导出配置。
        /// <li>10：分辨率为 480P，输出视频格式为 MP4；</li>
        /// <li>11：分辨率为 720P，输出视频格式为 MP4；</li>
        /// <li>12：分辨率为 1080P，输出视频格式为 MP4。</li>
        public let definition: UInt64

        /// 导出目标，指定导出视频的目标媒资库，可取值有：
        /// <li>CME：多媒体创作引擎，即导出为多媒体创作引擎媒资库，此导出目标在云点播媒资库依然可见；</li>
        /// <li>VOD：云点播，即导出为云点播媒资库，此导出目标在多媒体创作引擎媒资库将不可见。</li>
        public let exportDestination: String

        /// 视频封面图片文件（如 jpeg, png 等）进行 Base64 编码后的字符串，仅支持 gif、jpeg、png 三种图片格式，原图片文件不能超过2 M大 小。
        public let coverData: String?

        /// 导出的多媒体创作引擎媒体信息。当导出目标为 CME 时必填。
        public let cmeExportInfo: CMEExportInfo?

        /// 导出的云点播媒资信息。当导出目标为 VOD 时必填。
        public let vodExportInfo: VODExportInfo?

        /// 视频导出扩展参数。可以覆盖导出模板中的参数，灵活的指定导出规格及参数。
        public let exportExtensionArgs: VideoExportExtensionArgs?

        /// 操作者。填写用户的 Id，用于标识调用者及校验项目导出权限。
        public let `operator`: String?

        public init(platform: String, projectId: String, definition: UInt64, exportDestination: String, coverData: String? = nil, cmeExportInfo: CMEExportInfo? = nil, vodExportInfo: VODExportInfo? = nil, exportExtensionArgs: VideoExportExtensionArgs? = nil, operator: String? = nil) {
            self.platform = platform
            self.projectId = projectId
            self.definition = definition
            self.exportDestination = exportDestination
            self.coverData = coverData
            self.cmeExportInfo = cmeExportInfo
            self.vodExportInfo = vodExportInfo
            self.exportExtensionArgs = exportExtensionArgs
            self.`operator` = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case projectId = "ProjectId"
            case definition = "Definition"
            case exportDestination = "ExportDestination"
            case coverData = "CoverData"
            case cmeExportInfo = "CMEExportInfo"
            case vodExportInfo = "VODExportInfo"
            case exportExtensionArgs = "ExportExtensionArgs"
            case `operator` = "Operator"
        }
    }

    /// ExportVideoEditProject返回参数结构体
    public struct ExportVideoEditProjectResponse: TCResponseModel {
        /// 任务 Id。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 导出视频编辑项目
    ///
    /// 导出视频编辑项目，支持指定输出的模板。
    @inlinable
    public func exportVideoEditProject(_ input: ExportVideoEditProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportVideoEditProjectResponse> {
        self.client.execute(action: "ExportVideoEditProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出视频编辑项目
    ///
    /// 导出视频编辑项目，支持指定输出的模板。
    @inlinable
    public func exportVideoEditProject(_ input: ExportVideoEditProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVideoEditProjectResponse {
        try await self.client.execute(action: "ExportVideoEditProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出视频编辑项目
    ///
    /// 导出视频编辑项目，支持指定输出的模板。
    @inlinable
    public func exportVideoEditProject(platform: String, projectId: String, definition: UInt64, exportDestination: String, coverData: String? = nil, cmeExportInfo: CMEExportInfo? = nil, vodExportInfo: VODExportInfo? = nil, exportExtensionArgs: VideoExportExtensionArgs? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportVideoEditProjectResponse> {
        self.exportVideoEditProject(ExportVideoEditProjectRequest(platform: platform, projectId: projectId, definition: definition, exportDestination: exportDestination, coverData: coverData, cmeExportInfo: cmeExportInfo, vodExportInfo: vodExportInfo, exportExtensionArgs: exportExtensionArgs, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 导出视频编辑项目
    ///
    /// 导出视频编辑项目，支持指定输出的模板。
    @inlinable
    public func exportVideoEditProject(platform: String, projectId: String, definition: UInt64, exportDestination: String, coverData: String? = nil, cmeExportInfo: CMEExportInfo? = nil, vodExportInfo: VODExportInfo? = nil, exportExtensionArgs: VideoExportExtensionArgs? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVideoEditProjectResponse {
        try await self.exportVideoEditProject(ExportVideoEditProjectRequest(platform: platform, projectId: projectId, definition: definition, exportDestination: exportDestination, coverData: coverData, cmeExportInfo: cmeExportInfo, vodExportInfo: vodExportInfo, exportExtensionArgs: exportExtensionArgs, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
