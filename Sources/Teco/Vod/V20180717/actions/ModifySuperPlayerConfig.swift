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
    /// ModifySuperPlayerConfig请求参数结构体
    public struct ModifySuperPlayerConfigRequest: TCRequestModel {
        /// 播放器配置名称。
        public let name: String

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 播放的音视频类型，可选值：
        /// <li>AdaptiveDynamicStream：自适应码流输出；</li>
        /// <li>Transcode：转码输出；</li>
        /// <li>Original：原始音视频。</li>
        public let audioVideoType: String?

        /// 播放 DRM 保护的自适应码流开关：
        /// <li>ON：开启，表示仅播放 DRM  保护的自适应码流输出；</li>
        /// <li>OFF：关闭，表示播放未加密的自适应码流输出。</li>
        public let drmSwitch: String?

        /// 允许输出的未加密的自适应码流模板 ID。
        public let adaptiveDynamicStreamingDefinition: UInt64?

        /// 允许输出的 DRM 自适应码流模板内容。
        public let drmStreamingsInfo: DrmStreamingsInfoForUpdate?

        /// 允许输出的转码模板 ID。
        public let transcodeDefinition: UInt64?

        /// 允许输出的雪碧图模板 ID。
        public let imageSpriteDefinition: UInt64?

        /// 播放器对不于不同分辨率的子流展示名字。
        public let resolutionNames: [ResolutionNameInfo]?

        /// 播放时使用的域名。填 Default 表示使用[默认分发配置](https://cloud.tencent.com/document/product/266/33373)中的域名。
        public let domain: String?

        /// 播放时使用的 Scheme。取值范围：
        /// <li>Default：使用[默认分发配置](https://cloud.tencent.com/document/product/266/33373)中的 Scheme；</li>
        /// <li>HTTP；</li>
        /// <li>HTTPS。</li>
        public let scheme: String?

        /// 模板描述信息，长度限制：256 个字符。
        public let comment: String?

        public init(name: String, subAppId: UInt64? = nil, audioVideoType: String? = nil, drmSwitch: String? = nil, adaptiveDynamicStreamingDefinition: UInt64? = nil, drmStreamingsInfo: DrmStreamingsInfoForUpdate? = nil, transcodeDefinition: UInt64? = nil, imageSpriteDefinition: UInt64? = nil, resolutionNames: [ResolutionNameInfo]? = nil, domain: String? = nil, scheme: String? = nil, comment: String? = nil) {
            self.name = name
            self.subAppId = subAppId
            self.audioVideoType = audioVideoType
            self.drmSwitch = drmSwitch
            self.adaptiveDynamicStreamingDefinition = adaptiveDynamicStreamingDefinition
            self.drmStreamingsInfo = drmStreamingsInfo
            self.transcodeDefinition = transcodeDefinition
            self.imageSpriteDefinition = imageSpriteDefinition
            self.resolutionNames = resolutionNames
            self.domain = domain
            self.scheme = scheme
            self.comment = comment
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case subAppId = "SubAppId"
            case audioVideoType = "AudioVideoType"
            case drmSwitch = "DrmSwitch"
            case adaptiveDynamicStreamingDefinition = "AdaptiveDynamicStreamingDefinition"
            case drmStreamingsInfo = "DrmStreamingsInfo"
            case transcodeDefinition = "TranscodeDefinition"
            case imageSpriteDefinition = "ImageSpriteDefinition"
            case resolutionNames = "ResolutionNames"
            case domain = "Domain"
            case scheme = "Scheme"
            case comment = "Comment"
        }
    }

    /// ModifySuperPlayerConfig返回参数结构体
    public struct ModifySuperPlayerConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改播放器配置
    ///
    /// 该 API 已经<font color='red'>不再维护</font>，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 修改播放器配置。
    @inlinable @discardableResult
    public func modifySuperPlayerConfig(_ input: ModifySuperPlayerConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySuperPlayerConfigResponse> {
        self.client.execute(action: "ModifySuperPlayerConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改播放器配置
    ///
    /// 该 API 已经<font color='red'>不再维护</font>，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 修改播放器配置。
    @inlinable @discardableResult
    public func modifySuperPlayerConfig(_ input: ModifySuperPlayerConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySuperPlayerConfigResponse {
        try await self.client.execute(action: "ModifySuperPlayerConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改播放器配置
    ///
    /// 该 API 已经<font color='red'>不再维护</font>，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 修改播放器配置。
    @inlinable @discardableResult
    public func modifySuperPlayerConfig(name: String, subAppId: UInt64? = nil, audioVideoType: String? = nil, drmSwitch: String? = nil, adaptiveDynamicStreamingDefinition: UInt64? = nil, drmStreamingsInfo: DrmStreamingsInfoForUpdate? = nil, transcodeDefinition: UInt64? = nil, imageSpriteDefinition: UInt64? = nil, resolutionNames: [ResolutionNameInfo]? = nil, domain: String? = nil, scheme: String? = nil, comment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySuperPlayerConfigResponse> {
        self.modifySuperPlayerConfig(ModifySuperPlayerConfigRequest(name: name, subAppId: subAppId, audioVideoType: audioVideoType, drmSwitch: drmSwitch, adaptiveDynamicStreamingDefinition: adaptiveDynamicStreamingDefinition, drmStreamingsInfo: drmStreamingsInfo, transcodeDefinition: transcodeDefinition, imageSpriteDefinition: imageSpriteDefinition, resolutionNames: resolutionNames, domain: domain, scheme: scheme, comment: comment), region: region, logger: logger, on: eventLoop)
    }

    /// 修改播放器配置
    ///
    /// 该 API 已经<font color='red'>不再维护</font>，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 修改播放器配置。
    @inlinable @discardableResult
    public func modifySuperPlayerConfig(name: String, subAppId: UInt64? = nil, audioVideoType: String? = nil, drmSwitch: String? = nil, adaptiveDynamicStreamingDefinition: UInt64? = nil, drmStreamingsInfo: DrmStreamingsInfoForUpdate? = nil, transcodeDefinition: UInt64? = nil, imageSpriteDefinition: UInt64? = nil, resolutionNames: [ResolutionNameInfo]? = nil, domain: String? = nil, scheme: String? = nil, comment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySuperPlayerConfigResponse {
        try await self.modifySuperPlayerConfig(ModifySuperPlayerConfigRequest(name: name, subAppId: subAppId, audioVideoType: audioVideoType, drmSwitch: drmSwitch, adaptiveDynamicStreamingDefinition: adaptiveDynamicStreamingDefinition, drmStreamingsInfo: drmStreamingsInfo, transcodeDefinition: transcodeDefinition, imageSpriteDefinition: imageSpriteDefinition, resolutionNames: resolutionNames, domain: domain, scheme: scheme, comment: comment), region: region, logger: logger, on: eventLoop)
    }
}
