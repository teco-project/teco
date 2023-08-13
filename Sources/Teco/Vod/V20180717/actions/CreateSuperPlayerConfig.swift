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

extension Vod {
    /// CreateSuperPlayerConfig请求参数结构体
    public struct CreateSuperPlayerConfigRequest: TCRequestModel {
        /// 播放器配置名称，长度限制：64 个字符。只允许出现 [0-9a-zA-Z] 及 _- 字符（如 test_ABC-123），同一个用户该名称唯一。
        public let name: String

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 播放的音视频类型，可选值：
        /// - AdaptiveDynamicStream：自适应码流输出；
        /// - Transcode：转码输出；
        /// - Original：原始音视频。
        /// 默认为 AdaptiveDynamicStream。
        public let audioVideoType: String?

        /// 播放 DRM 保护的自适应码流开关：
        /// - ON：开启，表示仅播放 DRM  保护的自适应码流输出；
        /// - OFF：关闭，表示播放未加密的自适应码流输出。
        /// 默认为 OFF。
        /// 当 AudioVideoType 为 AdaptiveDynamicStream 时，此参数有效。
        public let drmSwitch: String?

        /// 允许输出的未加密的自适应码流模板 ID。
        ///
        /// 当 AudioVideoType 为 AdaptiveDynamicStream 并且 DrmSwitch 为 OFF 时，此参数为必填。
        public let adaptiveDynamicStreamingDefinition: UInt64?

        /// 允许输出的 DRM 自适应码流模板内容。
        ///
        /// 当 AudioVideoType 为 AdaptiveDynamicStream 并且 DrmSwitch 为 ON 时，此参数为必填。
        public let drmStreamingsInfo: DrmStreamingsInfo?

        /// 允许输出的转码模板 ID。
        ///
        /// 当 AudioVideoType 为 Transcode 时必填。
        public let transcodeDefinition: UInt64?

        /// 允许输出的雪碧图模板 ID。
        public let imageSpriteDefinition: UInt64?

        /// 播放器对于不同分辨率的子流展示名字，不填或者填空数组则使用默认配置：
        /// - MinEdgeLength：240，Name：流畅；
        /// - MinEdgeLength：480，Name：标清；
        /// - MinEdgeLength：720，Name：高清；
        /// - MinEdgeLength：1080，Name：全高清；
        /// - MinEdgeLength：1440，Name：2K；
        /// - MinEdgeLength：2160，Name：4K；
        /// - MinEdgeLength：4320，Name：8K。
        public let resolutionNames: [ResolutionNameInfo]?

        /// 播放时使用的域名。不填或者填 Default，表示使用[默认分发配置](https://cloud.tencent.com/document/product/266/33373)中的域名。
        public let domain: String?

        /// 播放时使用的 Scheme。不填或者填 Default，表示使用[默认分发配置](https://cloud.tencent.com/document/product/266/33373)中的 Scheme。其他可选值：
        /// - HTTP；
        /// - HTTPS。
        public let scheme: String?

        /// 模板描述信息，长度限制：256 个字符。
        public let comment: String?

        public init(name: String, subAppId: UInt64? = nil, audioVideoType: String? = nil, drmSwitch: String? = nil, adaptiveDynamicStreamingDefinition: UInt64? = nil, drmStreamingsInfo: DrmStreamingsInfo? = nil, transcodeDefinition: UInt64? = nil, imageSpriteDefinition: UInt64? = nil, resolutionNames: [ResolutionNameInfo]? = nil, domain: String? = nil, scheme: String? = nil, comment: String? = nil) {
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

    /// CreateSuperPlayerConfig返回参数结构体
    public struct CreateSuperPlayerConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建播放器配置
    ///
    /// 该 API 已经_不再维护_，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 创建播放器配置，数量上限：100。
    @inlinable @discardableResult
    public func createSuperPlayerConfig(_ input: CreateSuperPlayerConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSuperPlayerConfigResponse> {
        self.client.execute(action: "CreateSuperPlayerConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建播放器配置
    ///
    /// 该 API 已经_不再维护_，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 创建播放器配置，数量上限：100。
    @inlinable @discardableResult
    public func createSuperPlayerConfig(_ input: CreateSuperPlayerConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSuperPlayerConfigResponse {
        try await self.client.execute(action: "CreateSuperPlayerConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建播放器配置
    ///
    /// 该 API 已经_不再维护_，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 创建播放器配置，数量上限：100。
    @inlinable @discardableResult
    public func createSuperPlayerConfig(name: String, subAppId: UInt64? = nil, audioVideoType: String? = nil, drmSwitch: String? = nil, adaptiveDynamicStreamingDefinition: UInt64? = nil, drmStreamingsInfo: DrmStreamingsInfo? = nil, transcodeDefinition: UInt64? = nil, imageSpriteDefinition: UInt64? = nil, resolutionNames: [ResolutionNameInfo]? = nil, domain: String? = nil, scheme: String? = nil, comment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSuperPlayerConfigResponse> {
        self.createSuperPlayerConfig(.init(name: name, subAppId: subAppId, audioVideoType: audioVideoType, drmSwitch: drmSwitch, adaptiveDynamicStreamingDefinition: adaptiveDynamicStreamingDefinition, drmStreamingsInfo: drmStreamingsInfo, transcodeDefinition: transcodeDefinition, imageSpriteDefinition: imageSpriteDefinition, resolutionNames: resolutionNames, domain: domain, scheme: scheme, comment: comment), region: region, logger: logger, on: eventLoop)
    }

    /// 创建播放器配置
    ///
    /// 该 API 已经_不再维护_，新版播放器签名不再使用播放器配置模板，详细请参考 [播放器签名](https://cloud.tencent.com/document/product/266/45554)。
    /// 创建播放器配置，数量上限：100。
    @inlinable @discardableResult
    public func createSuperPlayerConfig(name: String, subAppId: UInt64? = nil, audioVideoType: String? = nil, drmSwitch: String? = nil, adaptiveDynamicStreamingDefinition: UInt64? = nil, drmStreamingsInfo: DrmStreamingsInfo? = nil, transcodeDefinition: UInt64? = nil, imageSpriteDefinition: UInt64? = nil, resolutionNames: [ResolutionNameInfo]? = nil, domain: String? = nil, scheme: String? = nil, comment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSuperPlayerConfigResponse {
        try await self.createSuperPlayerConfig(.init(name: name, subAppId: subAppId, audioVideoType: audioVideoType, drmSwitch: drmSwitch, adaptiveDynamicStreamingDefinition: adaptiveDynamicStreamingDefinition, drmStreamingsInfo: drmStreamingsInfo, transcodeDefinition: transcodeDefinition, imageSpriteDefinition: imageSpriteDefinition, resolutionNames: resolutionNames, domain: domain, scheme: scheme, comment: comment), region: region, logger: logger, on: eventLoop)
    }
}
