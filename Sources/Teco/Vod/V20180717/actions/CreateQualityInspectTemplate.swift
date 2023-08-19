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
    /// CreateQualityInspectTemplate请求参数结构体
    public struct CreateQualityInspectTemplateRequest: TCRequest {
        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        /// 音画质检测模板名称。
        public let name: String?

        /// 音画质检测模板描述。
        public let comment: String?

        /// 截帧间隔，单位为秒，最小值为 1。当不填时，默认截帧间隔为 1 秒。
        public let screenshotInterval: Float?

        /// 视频画面抖动重影检测的控制参数。
        public let jitterConfigure: JitterConfigureInfo?

        /// 视频画面模糊检测的控制参数。
        public let blurConfigure: BlurConfigureInfo?

        /// 视频画面低光、过曝检测的控制参数。
        public let abnormalLightingConfigure: AbnormalLightingConfigureInfo?

        /// 视频画面花屏检测的控制参数。
        public let crashScreenConfigure: CrashScreenConfigureInfo?

        /// 视频画面黑边、白边、黑屏、白屏检测的控制参数。
        public let blackWhiteEdgeConfigure: BlackWhiteEdgeConfigureInfo?

        /// 视频画面噪点检测的控制参数。
        public let noiseConfigure: NoiseConfigureInfo?

        /// 视频画面马赛克检测的控制参数。
        public let mosaicConfigure: MosaicConfigureInfo?

        /// 视频画面二维码检测的控制参数。
        public let qrCodeConfigure: QRCodeConfigureInfo?

        /// 音频（静音、低音、爆音）检测的控制参数。
        public let voiceConfigure: VoiceConfigureInfo?

        /// 视频画面质量评价的控制参数。
        public let qualityEvaluationConfigure: QualityEvaluationConfigureInfo?

        public init(subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, screenshotInterval: Float? = nil, jitterConfigure: JitterConfigureInfo? = nil, blurConfigure: BlurConfigureInfo? = nil, abnormalLightingConfigure: AbnormalLightingConfigureInfo? = nil, crashScreenConfigure: CrashScreenConfigureInfo? = nil, blackWhiteEdgeConfigure: BlackWhiteEdgeConfigureInfo? = nil, noiseConfigure: NoiseConfigureInfo? = nil, mosaicConfigure: MosaicConfigureInfo? = nil, qrCodeConfigure: QRCodeConfigureInfo? = nil, voiceConfigure: VoiceConfigureInfo? = nil, qualityEvaluationConfigure: QualityEvaluationConfigureInfo? = nil) {
            self.subAppId = subAppId
            self.name = name
            self.comment = comment
            self.screenshotInterval = screenshotInterval
            self.jitterConfigure = jitterConfigure
            self.blurConfigure = blurConfigure
            self.abnormalLightingConfigure = abnormalLightingConfigure
            self.crashScreenConfigure = crashScreenConfigure
            self.blackWhiteEdgeConfigure = blackWhiteEdgeConfigure
            self.noiseConfigure = noiseConfigure
            self.mosaicConfigure = mosaicConfigure
            self.qrCodeConfigure = qrCodeConfigure
            self.voiceConfigure = voiceConfigure
            self.qualityEvaluationConfigure = qualityEvaluationConfigure
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case name = "Name"
            case comment = "Comment"
            case screenshotInterval = "ScreenshotInterval"
            case jitterConfigure = "JitterConfigure"
            case blurConfigure = "BlurConfigure"
            case abnormalLightingConfigure = "AbnormalLightingConfigure"
            case crashScreenConfigure = "CrashScreenConfigure"
            case blackWhiteEdgeConfigure = "BlackWhiteEdgeConfigure"
            case noiseConfigure = "NoiseConfigure"
            case mosaicConfigure = "MosaicConfigure"
            case qrCodeConfigure = "QRCodeConfigure"
            case voiceConfigure = "VoiceConfigure"
            case qualityEvaluationConfigure = "QualityEvaluationConfigure"
        }
    }

    /// CreateQualityInspectTemplate返回参数结构体
    public struct CreateQualityInspectTemplateResponse: TCResponse {
        /// 音画质检测模板 ID。
        public let definition: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
            case requestId = "RequestId"
        }
    }

    /// 创建音画质检测模板
    ///
    /// 创建音画质检测模板。
    @inlinable
    public func createQualityInspectTemplate(_ input: CreateQualityInspectTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateQualityInspectTemplateResponse> {
        self.client.execute(action: "CreateQualityInspectTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建音画质检测模板
    ///
    /// 创建音画质检测模板。
    @inlinable
    public func createQualityInspectTemplate(_ input: CreateQualityInspectTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateQualityInspectTemplateResponse {
        try await self.client.execute(action: "CreateQualityInspectTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建音画质检测模板
    ///
    /// 创建音画质检测模板。
    @inlinable
    public func createQualityInspectTemplate(subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, screenshotInterval: Float? = nil, jitterConfigure: JitterConfigureInfo? = nil, blurConfigure: BlurConfigureInfo? = nil, abnormalLightingConfigure: AbnormalLightingConfigureInfo? = nil, crashScreenConfigure: CrashScreenConfigureInfo? = nil, blackWhiteEdgeConfigure: BlackWhiteEdgeConfigureInfo? = nil, noiseConfigure: NoiseConfigureInfo? = nil, mosaicConfigure: MosaicConfigureInfo? = nil, qrCodeConfigure: QRCodeConfigureInfo? = nil, voiceConfigure: VoiceConfigureInfo? = nil, qualityEvaluationConfigure: QualityEvaluationConfigureInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateQualityInspectTemplateResponse> {
        self.createQualityInspectTemplate(.init(subAppId: subAppId, name: name, comment: comment, screenshotInterval: screenshotInterval, jitterConfigure: jitterConfigure, blurConfigure: blurConfigure, abnormalLightingConfigure: abnormalLightingConfigure, crashScreenConfigure: crashScreenConfigure, blackWhiteEdgeConfigure: blackWhiteEdgeConfigure, noiseConfigure: noiseConfigure, mosaicConfigure: mosaicConfigure, qrCodeConfigure: qrCodeConfigure, voiceConfigure: voiceConfigure, qualityEvaluationConfigure: qualityEvaluationConfigure), region: region, logger: logger, on: eventLoop)
    }

    /// 创建音画质检测模板
    ///
    /// 创建音画质检测模板。
    @inlinable
    public func createQualityInspectTemplate(subAppId: UInt64? = nil, name: String? = nil, comment: String? = nil, screenshotInterval: Float? = nil, jitterConfigure: JitterConfigureInfo? = nil, blurConfigure: BlurConfigureInfo? = nil, abnormalLightingConfigure: AbnormalLightingConfigureInfo? = nil, crashScreenConfigure: CrashScreenConfigureInfo? = nil, blackWhiteEdgeConfigure: BlackWhiteEdgeConfigureInfo? = nil, noiseConfigure: NoiseConfigureInfo? = nil, mosaicConfigure: MosaicConfigureInfo? = nil, qrCodeConfigure: QRCodeConfigureInfo? = nil, voiceConfigure: VoiceConfigureInfo? = nil, qualityEvaluationConfigure: QualityEvaluationConfigureInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateQualityInspectTemplateResponse {
        try await self.createQualityInspectTemplate(.init(subAppId: subAppId, name: name, comment: comment, screenshotInterval: screenshotInterval, jitterConfigure: jitterConfigure, blurConfigure: blurConfigure, abnormalLightingConfigure: abnormalLightingConfigure, crashScreenConfigure: crashScreenConfigure, blackWhiteEdgeConfigure: blackWhiteEdgeConfigure, noiseConfigure: noiseConfigure, mosaicConfigure: mosaicConfigure, qrCodeConfigure: qrCodeConfigure, voiceConfigure: voiceConfigure, qualityEvaluationConfigure: qualityEvaluationConfigure), region: region, logger: logger, on: eventLoop)
    }
}
