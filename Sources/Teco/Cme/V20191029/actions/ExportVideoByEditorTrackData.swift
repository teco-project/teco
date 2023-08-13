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
    /// ExportVideoByEditorTrackData请求参数结构体
    public struct ExportVideoByEditorTrackDataRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 导出视频预设配置 Id，推荐优先使用下面的默认预设配置 Id，有其他需求可通过接口定制预设配置。
        /// - 10：分辨率为 480P，输出视频格式为 MP4；
        /// - 11：分辨率为 720P，输出视频格式为 MP4；
        /// - 12：分辨率为 1080P，输出视频格式为 MP4。
        public let definition: UInt64

        /// 导出目标，指定导出视频的目标媒资库，可取值有：
        /// - CME：多媒体创建引擎，即导出到多媒体创作引擎媒资库，此导出目标在云点播媒资库依然可见；
        /// - VOD：云点播，即导出为云点播媒资库，此导出目标在多媒体创作引擎媒资库将不可见。
        public let exportDestination: String

        /// 轨道数据，用于描述待导出视频的内容。关于轨道数据的格式请查看 [视频合成协议](https://cloud.tencent.com/document/product/1156/51225)。文档中也描述了如何在页面上查看一个剪辑项目的轨道数据，该能力可以帮助开发者更方便地构造自己的轨道数据。
        public let trackData: String

        /// 轨道数据对应的画布宽高比，配合预设配置中的视频短边尺寸，可决定导出画面的尺寸。例：
        /// - 如果 AspectRatio 取值 16:9，预设配置选为12（短边1080），则导出尺寸为 1920 * 1080；
        /// - 如果 AspectRatio 取值 9:16，预设配置选为11（短边720），则导出尺寸为 720 *1280。
        public let aspectRatio: String?

        /// 视频封面图片文件（如 jpeg, png 等）进行 Base64 编码后的字符串，仅支持 gif、jpeg、png 三种图片格式，原图片文件不能超过2 M大 小。
        public let coverData: String?

        /// 导出的多媒体创作引擎媒体信息。当导出目标为 CME 时必填。
        public let cmeExportInfo: CMEExportInfo?

        /// 导出的云点播媒资信息。当导出目标为 VOD 时必填。
        public let vodExportInfo: VODExportInfo?

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，无权限限制。如果指定操作者，轨道数据中使用的媒资该操作者需要拥有使用权限。
        public let `operator`: String?

        public init(platform: String, definition: UInt64, exportDestination: String, trackData: String, aspectRatio: String? = nil, coverData: String? = nil, cmeExportInfo: CMEExportInfo? = nil, vodExportInfo: VODExportInfo? = nil, operator: String? = nil) {
            self.platform = platform
            self.definition = definition
            self.exportDestination = exportDestination
            self.trackData = trackData
            self.aspectRatio = aspectRatio
            self.coverData = coverData
            self.cmeExportInfo = cmeExportInfo
            self.vodExportInfo = vodExportInfo
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case definition = "Definition"
            case exportDestination = "ExportDestination"
            case trackData = "TrackData"
            case aspectRatio = "AspectRatio"
            case coverData = "CoverData"
            case cmeExportInfo = "CMEExportInfo"
            case vodExportInfo = "VODExportInfo"
            case `operator` = "Operator"
        }
    }

    /// ExportVideoByEditorTrackData返回参数结构体
    public struct ExportVideoByEditorTrackDataResponse: TCResponseModel {
        /// 任务 Id。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 使用视频合成协议导出视频
    ///
    /// 使用 [视频合成协议](https://cloud.tencent.com/document/product/1156/51225) 合成视频，支持导出视频到 CME 云媒资或者云点播媒资。
    @inlinable
    public func exportVideoByEditorTrackData(_ input: ExportVideoByEditorTrackDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportVideoByEditorTrackDataResponse> {
        self.client.execute(action: "ExportVideoByEditorTrackData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 使用视频合成协议导出视频
    ///
    /// 使用 [视频合成协议](https://cloud.tencent.com/document/product/1156/51225) 合成视频，支持导出视频到 CME 云媒资或者云点播媒资。
    @inlinable
    public func exportVideoByEditorTrackData(_ input: ExportVideoByEditorTrackDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVideoByEditorTrackDataResponse {
        try await self.client.execute(action: "ExportVideoByEditorTrackData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 使用视频合成协议导出视频
    ///
    /// 使用 [视频合成协议](https://cloud.tencent.com/document/product/1156/51225) 合成视频，支持导出视频到 CME 云媒资或者云点播媒资。
    @inlinable
    public func exportVideoByEditorTrackData(platform: String, definition: UInt64, exportDestination: String, trackData: String, aspectRatio: String? = nil, coverData: String? = nil, cmeExportInfo: CMEExportInfo? = nil, vodExportInfo: VODExportInfo? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportVideoByEditorTrackDataResponse> {
        self.exportVideoByEditorTrackData(.init(platform: platform, definition: definition, exportDestination: exportDestination, trackData: trackData, aspectRatio: aspectRatio, coverData: coverData, cmeExportInfo: cmeExportInfo, vodExportInfo: vodExportInfo, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 使用视频合成协议导出视频
    ///
    /// 使用 [视频合成协议](https://cloud.tencent.com/document/product/1156/51225) 合成视频，支持导出视频到 CME 云媒资或者云点播媒资。
    @inlinable
    public func exportVideoByEditorTrackData(platform: String, definition: UInt64, exportDestination: String, trackData: String, aspectRatio: String? = nil, coverData: String? = nil, cmeExportInfo: CMEExportInfo? = nil, vodExportInfo: VODExportInfo? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportVideoByEditorTrackDataResponse {
        try await self.exportVideoByEditorTrackData(.init(platform: platform, definition: definition, exportDestination: exportDestination, trackData: trackData, aspectRatio: aspectRatio, coverData: coverData, cmeExportInfo: cmeExportInfo, vodExportInfo: vodExportInfo, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
