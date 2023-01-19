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

extension Vod {
    /// ModifyAdaptiveDynamicStreamingTemplate请求参数结构体
    public struct ModifyAdaptiveDynamicStreamingTemplateRequest: TCRequestModel {
        /// 自适应转码模板唯一标识。
        public let definition: UInt64

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 模板名称，长度限制：64 个字符。
        public let name: String?

        /// 自适应转码格式，取值范围：
        /// <li>HLS；</li>
        /// <li>MPEG-DASH。</li>
        public let format: String?

        /// 是否禁止视频低码率转高码率，取值范围：
        /// <li>0：否，</li>
        /// <li>1：是。</li>
        public let disableHigherVideoBitrate: UInt64?

        /// 是否禁止视频分辨率转高分辨率，取值范围：
        /// <li>0：否，</li>
        /// <li>1：是。</li>
        public let disableHigherVideoResolution: UInt64?

        /// 自适应转码输入流参数信息，最多输入10路流。
        /// 注意：各个流的帧率必须保持一致；如果不一致，采用第一个流的帧率作为输出帧率。
        public let streamInfos: [AdaptiveStreamTemplate]?

        /// 模板描述信息，长度限制：256 个字符。
        public let comment: String?

        /// 切片类型，当 Format 为 HLS 时有效，可选值：
        /// <li>ts：ts 切片；</li>
        /// <li>fmp4：fmp4 切片。</li>
        public let segmentType: String?

        public init(definition: UInt64, subAppId: UInt64? = nil, name: String? = nil, format: String? = nil, disableHigherVideoBitrate: UInt64? = nil, disableHigherVideoResolution: UInt64? = nil, streamInfos: [AdaptiveStreamTemplate]? = nil, comment: String? = nil, segmentType: String? = nil) {
            self.definition = definition
            self.subAppId = subAppId
            self.name = name
            self.format = format
            self.disableHigherVideoBitrate = disableHigherVideoBitrate
            self.disableHigherVideoResolution = disableHigherVideoResolution
            self.streamInfos = streamInfos
            self.comment = comment
            self.segmentType = segmentType
        }

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case subAppId = "SubAppId"
            case name = "Name"
            case format = "Format"
            case disableHigherVideoBitrate = "DisableHigherVideoBitrate"
            case disableHigherVideoResolution = "DisableHigherVideoResolution"
            case streamInfos = "StreamInfos"
            case comment = "Comment"
            case segmentType = "SegmentType"
        }
    }

    /// ModifyAdaptiveDynamicStreamingTemplate返回参数结构体
    public struct ModifyAdaptiveDynamicStreamingTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改转自适应码流模板
    @inlinable
    public func modifyAdaptiveDynamicStreamingTemplate(_ input: ModifyAdaptiveDynamicStreamingTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAdaptiveDynamicStreamingTemplateResponse> {
        self.client.execute(action: "ModifyAdaptiveDynamicStreamingTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改转自适应码流模板
    @inlinable
    public func modifyAdaptiveDynamicStreamingTemplate(_ input: ModifyAdaptiveDynamicStreamingTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAdaptiveDynamicStreamingTemplateResponse {
        try await self.client.execute(action: "ModifyAdaptiveDynamicStreamingTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改转自适应码流模板
    @inlinable
    public func modifyAdaptiveDynamicStreamingTemplate(definition: UInt64, subAppId: UInt64? = nil, name: String? = nil, format: String? = nil, disableHigherVideoBitrate: UInt64? = nil, disableHigherVideoResolution: UInt64? = nil, streamInfos: [AdaptiveStreamTemplate]? = nil, comment: String? = nil, segmentType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAdaptiveDynamicStreamingTemplateResponse> {
        self.modifyAdaptiveDynamicStreamingTemplate(ModifyAdaptiveDynamicStreamingTemplateRequest(definition: definition, subAppId: subAppId, name: name, format: format, disableHigherVideoBitrate: disableHigherVideoBitrate, disableHigherVideoResolution: disableHigherVideoResolution, streamInfos: streamInfos, comment: comment, segmentType: segmentType), region: region, logger: logger, on: eventLoop)
    }

    /// 修改转自适应码流模板
    @inlinable
    public func modifyAdaptiveDynamicStreamingTemplate(definition: UInt64, subAppId: UInt64? = nil, name: String? = nil, format: String? = nil, disableHigherVideoBitrate: UInt64? = nil, disableHigherVideoResolution: UInt64? = nil, streamInfos: [AdaptiveStreamTemplate]? = nil, comment: String? = nil, segmentType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAdaptiveDynamicStreamingTemplateResponse {
        try await self.modifyAdaptiveDynamicStreamingTemplate(ModifyAdaptiveDynamicStreamingTemplateRequest(definition: definition, subAppId: subAppId, name: name, format: format, disableHigherVideoBitrate: disableHigherVideoBitrate, disableHigherVideoResolution: disableHigherVideoResolution, streamInfos: streamInfos, comment: comment, segmentType: segmentType), region: region, logger: logger, on: eventLoop)
    }
}
