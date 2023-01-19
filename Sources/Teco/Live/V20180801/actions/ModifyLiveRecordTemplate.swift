//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Live {
    /// ModifyLiveRecordTemplate请求参数结构体
    public struct ModifyLiveRecordTemplateRequest: TCRequestModel {
        /// DescribeRecordTemplates接口获取到的模板 ID。
        public let templateId: Int64

        /// 模板名称。
        public let templateName: String?

        /// 描述信息。
        public let description: String?

        /// FLV 录制参数，开启 FLV 录制时设置。
        public let flvParam: RecordParam?

        /// HLS 录制参数，开启 HLS 录制时设置。
        public let hlsParam: RecordParam?

        /// MP4 录制参数，开启 MP4 录制时设置。
        public let mp4Param: RecordParam?

        /// AAC 录制参数，开启 AAC 录制时设置。
        public let aacParam: RecordParam?

        /// HLS 录制定制参数。
        public let hlsSpecialParam: HlsSpecialParam?

        /// MP3 录制参数，开启 MP3 录制时设置。
        public let mp3Param: RecordParam?

        /// 是否去除水印，类型为慢直播时此参数无效。
        public let removeWatermark: Bool?

        /// FLV 录制定制参数。
        public let flvSpecialParam: FlvSpecialParam?

        public init(templateId: Int64, templateName: String? = nil, description: String? = nil, flvParam: RecordParam? = nil, hlsParam: RecordParam? = nil, mp4Param: RecordParam? = nil, aacParam: RecordParam? = nil, hlsSpecialParam: HlsSpecialParam? = nil, mp3Param: RecordParam? = nil, removeWatermark: Bool? = nil, flvSpecialParam: FlvSpecialParam? = nil) {
            self.templateId = templateId
            self.templateName = templateName
            self.description = description
            self.flvParam = flvParam
            self.hlsParam = hlsParam
            self.mp4Param = mp4Param
            self.aacParam = aacParam
            self.hlsSpecialParam = hlsSpecialParam
            self.mp3Param = mp3Param
            self.removeWatermark = removeWatermark
            self.flvSpecialParam = flvSpecialParam
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case templateName = "TemplateName"
            case description = "Description"
            case flvParam = "FlvParam"
            case hlsParam = "HlsParam"
            case mp4Param = "Mp4Param"
            case aacParam = "AacParam"
            case hlsSpecialParam = "HlsSpecialParam"
            case mp3Param = "Mp3Param"
            case removeWatermark = "RemoveWatermark"
            case flvSpecialParam = "FlvSpecialParam"
        }
    }

    /// ModifyLiveRecordTemplate返回参数结构体
    public struct ModifyLiveRecordTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 直播修改录制模板配置
    ///
    /// 修改录制模板配置。
    @inlinable
    public func modifyLiveRecordTemplate(_ input: ModifyLiveRecordTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveRecordTemplateResponse> {
        self.client.execute(action: "ModifyLiveRecordTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直播修改录制模板配置
    ///
    /// 修改录制模板配置。
    @inlinable
    public func modifyLiveRecordTemplate(_ input: ModifyLiveRecordTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveRecordTemplateResponse {
        try await self.client.execute(action: "ModifyLiveRecordTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直播修改录制模板配置
    ///
    /// 修改录制模板配置。
    @inlinable
    public func modifyLiveRecordTemplate(templateId: Int64, templateName: String? = nil, description: String? = nil, flvParam: RecordParam? = nil, hlsParam: RecordParam? = nil, mp4Param: RecordParam? = nil, aacParam: RecordParam? = nil, hlsSpecialParam: HlsSpecialParam? = nil, mp3Param: RecordParam? = nil, removeWatermark: Bool? = nil, flvSpecialParam: FlvSpecialParam? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveRecordTemplateResponse> {
        self.modifyLiveRecordTemplate(ModifyLiveRecordTemplateRequest(templateId: templateId, templateName: templateName, description: description, flvParam: flvParam, hlsParam: hlsParam, mp4Param: mp4Param, aacParam: aacParam, hlsSpecialParam: hlsSpecialParam, mp3Param: mp3Param, removeWatermark: removeWatermark, flvSpecialParam: flvSpecialParam), region: region, logger: logger, on: eventLoop)
    }

    /// 直播修改录制模板配置
    ///
    /// 修改录制模板配置。
    @inlinable
    public func modifyLiveRecordTemplate(templateId: Int64, templateName: String? = nil, description: String? = nil, flvParam: RecordParam? = nil, hlsParam: RecordParam? = nil, mp4Param: RecordParam? = nil, aacParam: RecordParam? = nil, hlsSpecialParam: HlsSpecialParam? = nil, mp3Param: RecordParam? = nil, removeWatermark: Bool? = nil, flvSpecialParam: FlvSpecialParam? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveRecordTemplateResponse {
        try await self.modifyLiveRecordTemplate(ModifyLiveRecordTemplateRequest(templateId: templateId, templateName: templateName, description: description, flvParam: flvParam, hlsParam: hlsParam, mp4Param: mp4Param, aacParam: aacParam, hlsSpecialParam: hlsSpecialParam, mp3Param: mp3Param, removeWatermark: removeWatermark, flvSpecialParam: flvSpecialParam), region: region, logger: logger, on: eventLoop)
    }
}
