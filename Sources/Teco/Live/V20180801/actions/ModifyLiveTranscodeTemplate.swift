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

extension Live {
    /// ModifyLiveTranscodeTemplate请求参数结构体
    public struct ModifyLiveTranscodeTemplateRequest: TCRequestModel {
        /// 模板 Id。
        public let templateId: Int64

        /// 视频编码：h264/h265/origin，默认origin。
        ///
        /// origin: 保持原始编码格式
        public let vcodec: String?

        /// 音频编码：aac，默认aac。
        /// 注意：当前该参数未生效，待后续支持！
        public let acodec: String?

        /// 音频码率，默认0。
        /// 范围：0-500。
        public let audioBitrate: Int64?

        /// 模板描述。
        public let description: String?

        /// 视频码率。范围：0kbps - 8000kbps。
        /// 0为保持原始码率。
        /// 注: 转码模板有码率唯一要求，最终保存的码率可能与输入码率有所差别。
        public let videoBitrate: Int64?

        /// 宽。0-3000。
        /// 数值必须是2的倍数，0是原始宽度
        public let width: Int64?

        /// 是否保留视频，0：否，1：是。默认1。
        public let needVideo: Int64?

        /// 是否保留音频，0：否，1：是。默认1。
        public let needAudio: Int64?

        /// 高。0-3000。
        /// 数值必须是2的倍数，0是原始宽度
        public let height: Int64?

        /// 帧率，默认0。
        /// 范围0-60
        public let fps: Int64?

        /// 关键帧间隔，单位：秒。
        /// 范围2-6
        public let gop: Int64?

        /// 旋转角度，默认0。
        /// 可取值：0，90，180，270
        public let rotate: Int64?

        /// 编码质量：
        /// baseline/main/high。
        public let profile: String?

        /// 当设置的码率>原始码率时，是否以原始码率为准。
        /// 0：否， 1：是
        /// 默认 0。
        public let bitrateToOrig: Int64?

        /// 当设置的高度>原始高度时，是否以原始高度为准。
        /// 0：否， 1：是
        /// 默认 0。
        public let heightToOrig: Int64?

        /// 当设置的帧率>原始帧率时，是否以原始帧率为准。
        /// 0：否， 1：是
        /// 默认 0。
        public let fpsToOrig: Int64?

        /// 极速高清视频码率压缩比。
        /// 极速高清目标码率=VideoBitrate * (1-AdaptBitratePercent)
        ///
        /// 取值范围：0.0到0.5
        public let adaptBitratePercent: Float?

        /// 是否以短边作为高度，0：否，1：是。默认0。
        public let shortEdgeAsHeight: Int64?

        /// DRM 加密类型，可选值：fairplay、normalaes、widevine。
        /// 不传递或着为空字符串，清空之前的DRM配置。
        public let drmType: String?

        /// DRM 加密项，可选值：AUDIO、SD、HD、UHD1、UHD2，后四个为一组，同组中的内容只能选一个。
        /// 不传递或着为空字符串，清空之前的DRM配置。
        public let drmTracks: String?

        public init(templateId: Int64, vcodec: String? = nil, acodec: String? = nil, audioBitrate: Int64? = nil, description: String? = nil, videoBitrate: Int64? = nil, width: Int64? = nil, needVideo: Int64? = nil, needAudio: Int64? = nil, height: Int64? = nil, fps: Int64? = nil, gop: Int64? = nil, rotate: Int64? = nil, profile: String? = nil, bitrateToOrig: Int64? = nil, heightToOrig: Int64? = nil, fpsToOrig: Int64? = nil, adaptBitratePercent: Float? = nil, shortEdgeAsHeight: Int64? = nil, drmType: String? = nil, drmTracks: String? = nil) {
            self.templateId = templateId
            self.vcodec = vcodec
            self.acodec = acodec
            self.audioBitrate = audioBitrate
            self.description = description
            self.videoBitrate = videoBitrate
            self.width = width
            self.needVideo = needVideo
            self.needAudio = needAudio
            self.height = height
            self.fps = fps
            self.gop = gop
            self.rotate = rotate
            self.profile = profile
            self.bitrateToOrig = bitrateToOrig
            self.heightToOrig = heightToOrig
            self.fpsToOrig = fpsToOrig
            self.adaptBitratePercent = adaptBitratePercent
            self.shortEdgeAsHeight = shortEdgeAsHeight
            self.drmType = drmType
            self.drmTracks = drmTracks
        }

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case vcodec = "Vcodec"
            case acodec = "Acodec"
            case audioBitrate = "AudioBitrate"
            case description = "Description"
            case videoBitrate = "VideoBitrate"
            case width = "Width"
            case needVideo = "NeedVideo"
            case needAudio = "NeedAudio"
            case height = "Height"
            case fps = "Fps"
            case gop = "Gop"
            case rotate = "Rotate"
            case profile = "Profile"
            case bitrateToOrig = "BitrateToOrig"
            case heightToOrig = "HeightToOrig"
            case fpsToOrig = "FpsToOrig"
            case adaptBitratePercent = "AdaptBitratePercent"
            case shortEdgeAsHeight = "ShortEdgeAsHeight"
            case drmType = "DRMType"
            case drmTracks = "DRMTracks"
        }
    }

    /// ModifyLiveTranscodeTemplate返回参数结构体
    public struct ModifyLiveTranscodeTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改转码模板配置
    ///
    /// 修改转码模板配置。
    @inlinable @discardableResult
    public func modifyLiveTranscodeTemplate(_ input: ModifyLiveTranscodeTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveTranscodeTemplateResponse> {
        self.client.execute(action: "ModifyLiveTranscodeTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改转码模板配置
    ///
    /// 修改转码模板配置。
    @inlinable @discardableResult
    public func modifyLiveTranscodeTemplate(_ input: ModifyLiveTranscodeTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveTranscodeTemplateResponse {
        try await self.client.execute(action: "ModifyLiveTranscodeTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改转码模板配置
    ///
    /// 修改转码模板配置。
    @inlinable @discardableResult
    public func modifyLiveTranscodeTemplate(templateId: Int64, vcodec: String? = nil, acodec: String? = nil, audioBitrate: Int64? = nil, description: String? = nil, videoBitrate: Int64? = nil, width: Int64? = nil, needVideo: Int64? = nil, needAudio: Int64? = nil, height: Int64? = nil, fps: Int64? = nil, gop: Int64? = nil, rotate: Int64? = nil, profile: String? = nil, bitrateToOrig: Int64? = nil, heightToOrig: Int64? = nil, fpsToOrig: Int64? = nil, adaptBitratePercent: Float? = nil, shortEdgeAsHeight: Int64? = nil, drmType: String? = nil, drmTracks: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyLiveTranscodeTemplateResponse> {
        let input = ModifyLiveTranscodeTemplateRequest(templateId: templateId, vcodec: vcodec, acodec: acodec, audioBitrate: audioBitrate, description: description, videoBitrate: videoBitrate, width: width, needVideo: needVideo, needAudio: needAudio, height: height, fps: fps, gop: gop, rotate: rotate, profile: profile, bitrateToOrig: bitrateToOrig, heightToOrig: heightToOrig, fpsToOrig: fpsToOrig, adaptBitratePercent: adaptBitratePercent, shortEdgeAsHeight: shortEdgeAsHeight, drmType: drmType, drmTracks: drmTracks)
        return self.client.execute(action: "ModifyLiveTranscodeTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改转码模板配置
    ///
    /// 修改转码模板配置。
    @inlinable @discardableResult
    public func modifyLiveTranscodeTemplate(templateId: Int64, vcodec: String? = nil, acodec: String? = nil, audioBitrate: Int64? = nil, description: String? = nil, videoBitrate: Int64? = nil, width: Int64? = nil, needVideo: Int64? = nil, needAudio: Int64? = nil, height: Int64? = nil, fps: Int64? = nil, gop: Int64? = nil, rotate: Int64? = nil, profile: String? = nil, bitrateToOrig: Int64? = nil, heightToOrig: Int64? = nil, fpsToOrig: Int64? = nil, adaptBitratePercent: Float? = nil, shortEdgeAsHeight: Int64? = nil, drmType: String? = nil, drmTracks: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLiveTranscodeTemplateResponse {
        let input = ModifyLiveTranscodeTemplateRequest(templateId: templateId, vcodec: vcodec, acodec: acodec, audioBitrate: audioBitrate, description: description, videoBitrate: videoBitrate, width: width, needVideo: needVideo, needAudio: needAudio, height: height, fps: fps, gop: gop, rotate: rotate, profile: profile, bitrateToOrig: bitrateToOrig, heightToOrig: heightToOrig, fpsToOrig: fpsToOrig, adaptBitratePercent: adaptBitratePercent, shortEdgeAsHeight: shortEdgeAsHeight, drmType: drmType, drmTracks: drmTracks)
        return try await self.client.execute(action: "ModifyLiveTranscodeTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
