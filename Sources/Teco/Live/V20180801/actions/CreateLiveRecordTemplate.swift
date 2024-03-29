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
    /// CreateLiveRecordTemplate请求参数结构体
    public struct CreateLiveRecordTemplateRequest: TCRequest {
        /// 模板名。仅支持中文、英文、数字、_、-。
        public let templateName: String

        /// 描述信息。
        public let description: String?

        /// Flv录制参数，开启Flv录制时设置。
        public let flvParam: RecordParam?

        /// Hls录制参数，开启hls录制时设置。
        public let hlsParam: RecordParam?

        /// Mp4录制参数，开启Mp4录制时设置。
        public let mp4Param: RecordParam?

        /// Aac录制参数，开启Aac录制时设置。
        public let aacParam: RecordParam?

        /// 直播类型，默认 0。
        /// 0：普通直播，
        /// 1：慢直播。
        public let isDelayLive: Int64?

        /// HLS专属录制参数。
        public let hlsSpecialParam: HlsSpecialParam?

        /// Mp3录制参数，开启Mp3录制时设置。
        public let mp3Param: RecordParam?

        /// 是否去除水印，类型为慢直播时此参数无效。
        /// 如果为false，则录制水印流或转码流；如果为true，则录制原始流。
        public let removeWatermark: Bool?

        /// FLV 录制特殊参数。
        public let flvSpecialParam: FlvSpecialParam?

        public init(templateName: String, description: String? = nil, flvParam: RecordParam? = nil, hlsParam: RecordParam? = nil, mp4Param: RecordParam? = nil, aacParam: RecordParam? = nil, isDelayLive: Int64? = nil, hlsSpecialParam: HlsSpecialParam? = nil, mp3Param: RecordParam? = nil, removeWatermark: Bool? = nil, flvSpecialParam: FlvSpecialParam? = nil) {
            self.templateName = templateName
            self.description = description
            self.flvParam = flvParam
            self.hlsParam = hlsParam
            self.mp4Param = mp4Param
            self.aacParam = aacParam
            self.isDelayLive = isDelayLive
            self.hlsSpecialParam = hlsSpecialParam
            self.mp3Param = mp3Param
            self.removeWatermark = removeWatermark
            self.flvSpecialParam = flvSpecialParam
        }

        enum CodingKeys: String, CodingKey {
            case templateName = "TemplateName"
            case description = "Description"
            case flvParam = "FlvParam"
            case hlsParam = "HlsParam"
            case mp4Param = "Mp4Param"
            case aacParam = "AacParam"
            case isDelayLive = "IsDelayLive"
            case hlsSpecialParam = "HlsSpecialParam"
            case mp3Param = "Mp3Param"
            case removeWatermark = "RemoveWatermark"
            case flvSpecialParam = "FlvSpecialParam"
        }
    }

    /// CreateLiveRecordTemplate返回参数结构体
    public struct CreateLiveRecordTemplateResponse: TCResponse {
        /// 模板Id。
        public let templateId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case requestId = "RequestId"
        }
    }

    /// 直播创建录制模板
    ///
    /// 创建录制模板，数量上限：50，成功返回模板id后，需要调用[CreateLiveRecordRule](/document/product/267/32615)接口，将模板id绑定到流进行使用。
    ///
    /// 录制相关文档：[直播录制](/document/product/267/32739)。
    @inlinable
    public func createLiveRecordTemplate(_ input: CreateLiveRecordTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveRecordTemplateResponse> {
        self.client.execute(action: "CreateLiveRecordTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直播创建录制模板
    ///
    /// 创建录制模板，数量上限：50，成功返回模板id后，需要调用[CreateLiveRecordRule](/document/product/267/32615)接口，将模板id绑定到流进行使用。
    ///
    /// 录制相关文档：[直播录制](/document/product/267/32739)。
    @inlinable
    public func createLiveRecordTemplate(_ input: CreateLiveRecordTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveRecordTemplateResponse {
        try await self.client.execute(action: "CreateLiveRecordTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直播创建录制模板
    ///
    /// 创建录制模板，数量上限：50，成功返回模板id后，需要调用[CreateLiveRecordRule](/document/product/267/32615)接口，将模板id绑定到流进行使用。
    ///
    /// 录制相关文档：[直播录制](/document/product/267/32739)。
    @inlinable
    public func createLiveRecordTemplate(templateName: String, description: String? = nil, flvParam: RecordParam? = nil, hlsParam: RecordParam? = nil, mp4Param: RecordParam? = nil, aacParam: RecordParam? = nil, isDelayLive: Int64? = nil, hlsSpecialParam: HlsSpecialParam? = nil, mp3Param: RecordParam? = nil, removeWatermark: Bool? = nil, flvSpecialParam: FlvSpecialParam? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateLiveRecordTemplateResponse> {
        self.createLiveRecordTemplate(.init(templateName: templateName, description: description, flvParam: flvParam, hlsParam: hlsParam, mp4Param: mp4Param, aacParam: aacParam, isDelayLive: isDelayLive, hlsSpecialParam: hlsSpecialParam, mp3Param: mp3Param, removeWatermark: removeWatermark, flvSpecialParam: flvSpecialParam), region: region, logger: logger, on: eventLoop)
    }

    /// 直播创建录制模板
    ///
    /// 创建录制模板，数量上限：50，成功返回模板id后，需要调用[CreateLiveRecordRule](/document/product/267/32615)接口，将模板id绑定到流进行使用。
    ///
    /// 录制相关文档：[直播录制](/document/product/267/32739)。
    @inlinable
    public func createLiveRecordTemplate(templateName: String, description: String? = nil, flvParam: RecordParam? = nil, hlsParam: RecordParam? = nil, mp4Param: RecordParam? = nil, aacParam: RecordParam? = nil, isDelayLive: Int64? = nil, hlsSpecialParam: HlsSpecialParam? = nil, mp3Param: RecordParam? = nil, removeWatermark: Bool? = nil, flvSpecialParam: FlvSpecialParam? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateLiveRecordTemplateResponse {
        try await self.createLiveRecordTemplate(.init(templateName: templateName, description: description, flvParam: flvParam, hlsParam: hlsParam, mp4Param: mp4Param, aacParam: aacParam, isDelayLive: isDelayLive, hlsSpecialParam: hlsSpecialParam, mp3Param: mp3Param, removeWatermark: removeWatermark, flvSpecialParam: flvSpecialParam), region: region, logger: logger, on: eventLoop)
    }
}
