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
    /// CreateAdaptiveDynamicStreamingTemplate请求参数结构体
    public struct CreateAdaptiveDynamicStreamingTemplateRequest: TCRequestModel {
        /// 自适应转码格式，取值范围：
        /// - HLS；
        /// - MPEG-DASH。
        public let format: String

        /// 自适应转码输出子流参数信息，最多输出10路子流。
        /// 注意：各个子流的帧率必须保持一致；如果不一致，采用第一个子流的帧率作为输出帧率。
        public let streamInfos: [AdaptiveStreamTemplate]

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 模板名称，长度限制：64 个字符。
        public let name: String?

        /// DRM 方案类型，取值范围：
        /// - SimpleAES
        /// - Widevine
        /// - FairPlay
        /// 如果取值为空字符串，代表不对视频做 DRM 保护。
        public let drmType: String?

        /// DRM 的密钥提供商，取值范围：
        /// - SDMC：华曦达；
        /// - VOD：云点播。
        /// 默认为 VOD 。
        public let drmKeyProvider: String?

        /// 是否禁止视频低码率转高码率，取值范围：
        /// - 0：否，
        /// - 1：是。
        /// 默认为否。
        public let disableHigherVideoBitrate: UInt64?

        /// 是否禁止视频分辨率转高分辨率，取值范围：
        /// - 0：否，
        /// - 1：是。
        /// 默认为否。
        public let disableHigherVideoResolution: UInt64?

        /// 模板描述信息，长度限制：256 个字符。
        public let comment: String?

        /// 切片类型，当 Format 为 HLS 时有效，可选值：
        /// - ts：ts 切片；
        /// - fmp4：fmp4 切片。
        /// 默认值：ts。
        public let segmentType: String?

        public init(format: String, streamInfos: [AdaptiveStreamTemplate], subAppId: UInt64? = nil, name: String? = nil, drmType: String? = nil, drmKeyProvider: String? = nil, disableHigherVideoBitrate: UInt64? = nil, disableHigherVideoResolution: UInt64? = nil, comment: String? = nil, segmentType: String? = nil) {
            self.format = format
            self.streamInfos = streamInfos
            self.subAppId = subAppId
            self.name = name
            self.drmType = drmType
            self.drmKeyProvider = drmKeyProvider
            self.disableHigherVideoBitrate = disableHigherVideoBitrate
            self.disableHigherVideoResolution = disableHigherVideoResolution
            self.comment = comment
            self.segmentType = segmentType
        }

        enum CodingKeys: String, CodingKey {
            case format = "Format"
            case streamInfos = "StreamInfos"
            case subAppId = "SubAppId"
            case name = "Name"
            case drmType = "DrmType"
            case drmKeyProvider = "DrmKeyProvider"
            case disableHigherVideoBitrate = "DisableHigherVideoBitrate"
            case disableHigherVideoResolution = "DisableHigherVideoResolution"
            case comment = "Comment"
            case segmentType = "SegmentType"
        }
    }

    /// CreateAdaptiveDynamicStreamingTemplate返回参数结构体
    public struct CreateAdaptiveDynamicStreamingTemplateResponse: TCResponseModel {
        /// 自适应转码模板唯一标识。
        public let definition: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case requestId = "RequestId"
        }
    }

    /// 创建转自适应码流模板
    ///
    /// 创建转自适应码流模板，数量上限：100。
    @inlinable
    public func createAdaptiveDynamicStreamingTemplate(_ input: CreateAdaptiveDynamicStreamingTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAdaptiveDynamicStreamingTemplateResponse> {
        self.client.execute(action: "CreateAdaptiveDynamicStreamingTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建转自适应码流模板
    ///
    /// 创建转自适应码流模板，数量上限：100。
    @inlinable
    public func createAdaptiveDynamicStreamingTemplate(_ input: CreateAdaptiveDynamicStreamingTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAdaptiveDynamicStreamingTemplateResponse {
        try await self.client.execute(action: "CreateAdaptiveDynamicStreamingTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建转自适应码流模板
    ///
    /// 创建转自适应码流模板，数量上限：100。
    @inlinable
    public func createAdaptiveDynamicStreamingTemplate(format: String, streamInfos: [AdaptiveStreamTemplate], subAppId: UInt64? = nil, name: String? = nil, drmType: String? = nil, drmKeyProvider: String? = nil, disableHigherVideoBitrate: UInt64? = nil, disableHigherVideoResolution: UInt64? = nil, comment: String? = nil, segmentType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAdaptiveDynamicStreamingTemplateResponse> {
        self.createAdaptiveDynamicStreamingTemplate(.init(format: format, streamInfos: streamInfos, subAppId: subAppId, name: name, drmType: drmType, drmKeyProvider: drmKeyProvider, disableHigherVideoBitrate: disableHigherVideoBitrate, disableHigherVideoResolution: disableHigherVideoResolution, comment: comment, segmentType: segmentType), region: region, logger: logger, on: eventLoop)
    }

    /// 创建转自适应码流模板
    ///
    /// 创建转自适应码流模板，数量上限：100。
    @inlinable
    public func createAdaptiveDynamicStreamingTemplate(format: String, streamInfos: [AdaptiveStreamTemplate], subAppId: UInt64? = nil, name: String? = nil, drmType: String? = nil, drmKeyProvider: String? = nil, disableHigherVideoBitrate: UInt64? = nil, disableHigherVideoResolution: UInt64? = nil, comment: String? = nil, segmentType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAdaptiveDynamicStreamingTemplateResponse {
        try await self.createAdaptiveDynamicStreamingTemplate(.init(format: format, streamInfos: streamInfos, subAppId: subAppId, name: name, drmType: drmType, drmKeyProvider: drmKeyProvider, disableHigherVideoBitrate: disableHigherVideoBitrate, disableHigherVideoResolution: disableHigherVideoResolution, comment: comment, segmentType: segmentType), region: region, logger: logger, on: eventLoop)
    }
}
