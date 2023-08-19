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

extension Live {
    /// ModifyLiveTimeShiftTemplate请求参数结构体
    public struct ModifyLiveTimeShiftTemplateRequest: TCRequest {
        /// 时移模板id。
        public let templateId: UInt64

        /// 模板名称。
        /// 仅支持中文、英文、数字、_、-。
        public let templateName: String?

        /// 描述信息。
        /// 长度上限：1024字节。
        /// 仅支持中文、英文、数字、_、-。
        public let description: String?

        /// 时移时长。
        /// 单位：s。
        public let duration: UInt64?

        /// 分片时长。
        /// 可取3-10。
        /// 单位：s。
        /// 默认值：5。
        public let itemDuration: UInt64?

        /// 是否去除水印。
        /// 传true则将录制原始流。
        /// 默认值：false。
        public let removeWatermark: Bool?

        /// 转码流id列表。
        /// 此参数仅在 RemoveWatermark为false时生效。
        public let transcodeTemplateIds: [Int64]?

        /// 地域。
        /// Mainland：中国大陆。
        /// Overseas：海外及港澳台地区。
        /// 默认值：Mainland。
        public let area: String?

        public init(templateId: UInt64, templateName: String? = nil, description: String? = nil, duration: UInt64? = nil, itemDuration: UInt64? = nil, removeWatermark: Bool? = nil, transcodeTemplateIds: [Int64]? = nil, area: String? = nil) {
            self.templateId = templateId
            self.templateName = templateName
            self.description = description
            self.duration = duration
            self.itemDuration = itemDuration
            self.removeWatermark = removeWatermark
            self.transcodeTemplateIds = transcodeTemplateIds
            self.area = area
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case templateName = "TemplateName"
            case description = "Description"
            case duration = "Duration"
            case itemDuration = "ItemDuration"
            case removeWatermark = "RemoveWatermark"
            case transcodeTemplateIds = "TranscodeTemplateIds"
            case area = "Area"
        }
    }

    /// ModifyLiveTimeShiftTemplate返回参数结构体
    public struct ModifyLiveTimeShiftTemplateResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改直播时移模板
    ///
    /// 修改直播时移模板。
    @inlinable @discardableResult
    public func modifyLiveTimeShiftTemplate(_ input: ModifyLiveTimeShiftTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveTimeShiftTemplateResponse> {
        self.client.execute(action: "ModifyLiveTimeShiftTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改直播时移模板
    ///
    /// 修改直播时移模板。
    @inlinable @discardableResult
    public func modifyLiveTimeShiftTemplate(_ input: ModifyLiveTimeShiftTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveTimeShiftTemplateResponse {
        try await self.client.execute(action: "ModifyLiveTimeShiftTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改直播时移模板
    ///
    /// 修改直播时移模板。
    @inlinable @discardableResult
    public func modifyLiveTimeShiftTemplate(templateId: UInt64, templateName: String? = nil, description: String? = nil, duration: UInt64? = nil, itemDuration: UInt64? = nil, removeWatermark: Bool? = nil, transcodeTemplateIds: [Int64]? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveTimeShiftTemplateResponse> {
        self.modifyLiveTimeShiftTemplate(.init(templateId: templateId, templateName: templateName, description: description, duration: duration, itemDuration: itemDuration, removeWatermark: removeWatermark, transcodeTemplateIds: transcodeTemplateIds, area: area), region: region, logger: logger, on: eventLoop)
    }

    /// 修改直播时移模板
    ///
    /// 修改直播时移模板。
    @inlinable @discardableResult
    public func modifyLiveTimeShiftTemplate(templateId: UInt64, templateName: String? = nil, description: String? = nil, duration: UInt64? = nil, itemDuration: UInt64? = nil, removeWatermark: Bool? = nil, transcodeTemplateIds: [Int64]? = nil, area: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveTimeShiftTemplateResponse {
        try await self.modifyLiveTimeShiftTemplate(.init(templateId: templateId, templateName: templateName, description: description, duration: duration, itemDuration: itemDuration, removeWatermark: removeWatermark, transcodeTemplateIds: transcodeTemplateIds, area: area), region: region, logger: logger, on: eventLoop)
    }
}
