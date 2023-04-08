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
    /// ImportMediaToProject请求参数结构体
    public struct ImportMediaToProjectRequest: TCRequestModel {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 项目 Id。
        public let projectId: String

        /// 导入媒资类型，取值：
        /// <li>VOD：云点播文件；</li>
        /// <li>EXTERNAL：媒资绑定。</li>
        ///
        /// 注意：如果不填默认为云点播文件，如果媒体存储在非腾讯云点播中，都需要使用媒资绑定。
        public let sourceType: String?

        /// 云点播媒资文件 Id，当 SourceType 取值 VOD 或者缺省的时候必填。
        public let vodFileId: String?

        /// 原始媒资文件信息，当 SourceType 取值 EXTERNAL 的时候必填。
        public let externalMediaInfo: ExternalMediaInfo?

        /// 媒体名称，不能超过30个字符。如果不填，则媒体名称为点播媒资文件名称。
        public let name: String?

        /// 媒体预处理配置 ID，取值：
        /// <li>10：进行视频编辑预处理。</li>
        ///
        /// 注意：如果填0或者不填则不进行处理，如果原始视频不可在浏览器直接播放将无法在编辑页面编辑。
        public let preProcessDefinition: Int64?

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以向所有视频编辑项目导入媒体；如果指定操作者，则操作者必须为项目所有者。
        public let `operator`: String?

        public init(platform: String, projectId: String, sourceType: String? = nil, vodFileId: String? = nil, externalMediaInfo: ExternalMediaInfo? = nil, name: String? = nil, preProcessDefinition: Int64? = nil, operator: String? = nil) {
            self.platform = platform
            self.projectId = projectId
            self.sourceType = sourceType
            self.vodFileId = vodFileId
            self.externalMediaInfo = externalMediaInfo
            self.name = name
            self.preProcessDefinition = preProcessDefinition
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case projectId = "ProjectId"
            case sourceType = "SourceType"
            case vodFileId = "VodFileId"
            case externalMediaInfo = "ExternalMediaInfo"
            case name = "Name"
            case preProcessDefinition = "PreProcessDefinition"
            case `operator` = "Operator"
        }
    }

    /// ImportMediaToProject返回参数结构体
    public struct ImportMediaToProjectResponse: TCResponseModel {
        /// 媒体 Id。
        public let materialId: String

        /// 媒体预处理任务 ID，如果未指定发起预处理任务则为空。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case materialId = "MaterialId"
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 在项目中导入媒体
    ///
    /// 将云点播中的媒资或者用户自有媒资文件添加到项目中与项目关联，供后续视频编辑使用。目前仅视频编辑项目和智能视频拆条项目有效。
    @inlinable
    public func importMediaToProject(_ input: ImportMediaToProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportMediaToProjectResponse> {
        self.client.execute(action: "ImportMediaToProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 在项目中导入媒体
    ///
    /// 将云点播中的媒资或者用户自有媒资文件添加到项目中与项目关联，供后续视频编辑使用。目前仅视频编辑项目和智能视频拆条项目有效。
    @inlinable
    public func importMediaToProject(_ input: ImportMediaToProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportMediaToProjectResponse {
        try await self.client.execute(action: "ImportMediaToProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 在项目中导入媒体
    ///
    /// 将云点播中的媒资或者用户自有媒资文件添加到项目中与项目关联，供后续视频编辑使用。目前仅视频编辑项目和智能视频拆条项目有效。
    @inlinable
    public func importMediaToProject(platform: String, projectId: String, sourceType: String? = nil, vodFileId: String? = nil, externalMediaInfo: ExternalMediaInfo? = nil, name: String? = nil, preProcessDefinition: Int64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportMediaToProjectResponse> {
        self.importMediaToProject(.init(platform: platform, projectId: projectId, sourceType: sourceType, vodFileId: vodFileId, externalMediaInfo: externalMediaInfo, name: name, preProcessDefinition: preProcessDefinition, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 在项目中导入媒体
    ///
    /// 将云点播中的媒资或者用户自有媒资文件添加到项目中与项目关联，供后续视频编辑使用。目前仅视频编辑项目和智能视频拆条项目有效。
    @inlinable
    public func importMediaToProject(platform: String, projectId: String, sourceType: String? = nil, vodFileId: String? = nil, externalMediaInfo: ExternalMediaInfo? = nil, name: String? = nil, preProcessDefinition: Int64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportMediaToProjectResponse {
        try await self.importMediaToProject(.init(platform: platform, projectId: projectId, sourceType: sourceType, vodFileId: vodFileId, externalMediaInfo: externalMediaInfo, name: name, preProcessDefinition: preProcessDefinition, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
