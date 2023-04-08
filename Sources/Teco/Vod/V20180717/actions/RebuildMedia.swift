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

import TecoCore

extension Vod {
    /// RebuildMedia请求参数结构体
    public struct RebuildMediaRequest: TCRequestModel {
        /// 媒体文件 ID。
        public let fileId: String

        /// <b>点播 [子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 起始偏移时间，单位：秒，不填表示从视频开始截取。
        public let startTimeOffset: Float?

        /// 结束偏移时间，单位：秒，不填表示截取到视频末尾。
        public let endTimeOffset: Float?

        /// 画质修复控制参数。
        public let repairInfo: RepairInfo?

        /// 智能插帧控制参数。
        public let videoFrameInterpolationInfo: VideoFrameInterpolationInfo?

        /// 画面超分控制参数。
        public let superResolutionInfo: SuperResolutionInfo?

        /// 高动态范围类型控制参数。
        public let hdrInfo: HDRInfo?

        /// 视频降噪控制参数。
        public let videoDenoiseInfo: VideoDenoiseInfo?

        /// 音频降噪控制参数。
        public let audioDenoiseInfo: AudioDenoiseInfo?

        /// 色彩增强控制参数。
        public let colorInfo: ColorEnhanceInfo?

        /// 细节增强控制参数。
        public let sharpInfo: SharpEnhanceInfo?

        /// 人脸增强控制参数。
        public let faceInfo: FaceEnhanceInfo?

        /// 低光照控制参数。
        public let lowLightInfo: LowLightEnhanceInfo?

        /// 去划痕控制参数。
        public let scratchRepairInfo: ScratchRepairInfo?

        /// 去伪影（毛刺）控制参数。
        public let artifactRepairInfo: ArtifactRepairInfo?

        /// 音画质重生输出目标参数。
        public let targetInfo: RebuildMediaTargetInfo?

        /// 用于去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        public let sessionId: String?

        /// 来源上下文，用于透传用户请求信息，任务流状态变更回调将返回该字段值，最长 1000 个字符。
        public let sessionContext: String?

        /// 任务的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        public let tasksPriority: Int64?

        /// 保留字段，特殊用途时使用。
        public let extInfo: String?

        public init(fileId: String, subAppId: UInt64? = nil, startTimeOffset: Float? = nil, endTimeOffset: Float? = nil, repairInfo: RepairInfo? = nil, videoFrameInterpolationInfo: VideoFrameInterpolationInfo? = nil, superResolutionInfo: SuperResolutionInfo? = nil, hdrInfo: HDRInfo? = nil, videoDenoiseInfo: VideoDenoiseInfo? = nil, audioDenoiseInfo: AudioDenoiseInfo? = nil, colorInfo: ColorEnhanceInfo? = nil, sharpInfo: SharpEnhanceInfo? = nil, faceInfo: FaceEnhanceInfo? = nil, lowLightInfo: LowLightEnhanceInfo? = nil, scratchRepairInfo: ScratchRepairInfo? = nil, artifactRepairInfo: ArtifactRepairInfo? = nil, targetInfo: RebuildMediaTargetInfo? = nil, sessionId: String? = nil, sessionContext: String? = nil, tasksPriority: Int64? = nil, extInfo: String? = nil) {
            self.fileId = fileId
            self.subAppId = subAppId
            self.startTimeOffset = startTimeOffset
            self.endTimeOffset = endTimeOffset
            self.repairInfo = repairInfo
            self.videoFrameInterpolationInfo = videoFrameInterpolationInfo
            self.superResolutionInfo = superResolutionInfo
            self.hdrInfo = hdrInfo
            self.videoDenoiseInfo = videoDenoiseInfo
            self.audioDenoiseInfo = audioDenoiseInfo
            self.colorInfo = colorInfo
            self.sharpInfo = sharpInfo
            self.faceInfo = faceInfo
            self.lowLightInfo = lowLightInfo
            self.scratchRepairInfo = scratchRepairInfo
            self.artifactRepairInfo = artifactRepairInfo
            self.targetInfo = targetInfo
            self.sessionId = sessionId
            self.sessionContext = sessionContext
            self.tasksPriority = tasksPriority
            self.extInfo = extInfo
        }

        enum CodingKeys: String, CodingKey {
            case fileId = "FileId"
            case subAppId = "SubAppId"
            case startTimeOffset = "StartTimeOffset"
            case endTimeOffset = "EndTimeOffset"
            case repairInfo = "RepairInfo"
            case videoFrameInterpolationInfo = "VideoFrameInterpolationInfo"
            case superResolutionInfo = "SuperResolutionInfo"
            case hdrInfo = "HDRInfo"
            case videoDenoiseInfo = "VideoDenoiseInfo"
            case audioDenoiseInfo = "AudioDenoiseInfo"
            case colorInfo = "ColorInfo"
            case sharpInfo = "SharpInfo"
            case faceInfo = "FaceInfo"
            case lowLightInfo = "LowLightInfo"
            case scratchRepairInfo = "ScratchRepairInfo"
            case artifactRepairInfo = "ArtifactRepairInfo"
            case targetInfo = "TargetInfo"
            case sessionId = "SessionId"
            case sessionContext = "SessionContext"
            case tasksPriority = "TasksPriority"
            case extInfo = "ExtInfo"
        }
    }

    /// RebuildMedia返回参数结构体
    public struct RebuildMediaResponse: TCResponseModel {
        /// 音画质重生的任务 ID，可以通过该 ID 查询音画质重生任务的状态。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 发起音画质重生
    @inlinable
    public func rebuildMedia(_ input: RebuildMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RebuildMediaResponse> {
        self.client.execute(action: "RebuildMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 发起音画质重生
    @inlinable
    public func rebuildMedia(_ input: RebuildMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RebuildMediaResponse {
        try await self.client.execute(action: "RebuildMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 发起音画质重生
    @inlinable
    public func rebuildMedia(fileId: String, subAppId: UInt64? = nil, startTimeOffset: Float? = nil, endTimeOffset: Float? = nil, repairInfo: RepairInfo? = nil, videoFrameInterpolationInfo: VideoFrameInterpolationInfo? = nil, superResolutionInfo: SuperResolutionInfo? = nil, hdrInfo: HDRInfo? = nil, videoDenoiseInfo: VideoDenoiseInfo? = nil, audioDenoiseInfo: AudioDenoiseInfo? = nil, colorInfo: ColorEnhanceInfo? = nil, sharpInfo: SharpEnhanceInfo? = nil, faceInfo: FaceEnhanceInfo? = nil, lowLightInfo: LowLightEnhanceInfo? = nil, scratchRepairInfo: ScratchRepairInfo? = nil, artifactRepairInfo: ArtifactRepairInfo? = nil, targetInfo: RebuildMediaTargetInfo? = nil, sessionId: String? = nil, sessionContext: String? = nil, tasksPriority: Int64? = nil, extInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RebuildMediaResponse> {
        self.rebuildMedia(.init(fileId: fileId, subAppId: subAppId, startTimeOffset: startTimeOffset, endTimeOffset: endTimeOffset, repairInfo: repairInfo, videoFrameInterpolationInfo: videoFrameInterpolationInfo, superResolutionInfo: superResolutionInfo, hdrInfo: hdrInfo, videoDenoiseInfo: videoDenoiseInfo, audioDenoiseInfo: audioDenoiseInfo, colorInfo: colorInfo, sharpInfo: sharpInfo, faceInfo: faceInfo, lowLightInfo: lowLightInfo, scratchRepairInfo: scratchRepairInfo, artifactRepairInfo: artifactRepairInfo, targetInfo: targetInfo, sessionId: sessionId, sessionContext: sessionContext, tasksPriority: tasksPriority, extInfo: extInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 发起音画质重生
    @inlinable
    public func rebuildMedia(fileId: String, subAppId: UInt64? = nil, startTimeOffset: Float? = nil, endTimeOffset: Float? = nil, repairInfo: RepairInfo? = nil, videoFrameInterpolationInfo: VideoFrameInterpolationInfo? = nil, superResolutionInfo: SuperResolutionInfo? = nil, hdrInfo: HDRInfo? = nil, videoDenoiseInfo: VideoDenoiseInfo? = nil, audioDenoiseInfo: AudioDenoiseInfo? = nil, colorInfo: ColorEnhanceInfo? = nil, sharpInfo: SharpEnhanceInfo? = nil, faceInfo: FaceEnhanceInfo? = nil, lowLightInfo: LowLightEnhanceInfo? = nil, scratchRepairInfo: ScratchRepairInfo? = nil, artifactRepairInfo: ArtifactRepairInfo? = nil, targetInfo: RebuildMediaTargetInfo? = nil, sessionId: String? = nil, sessionContext: String? = nil, tasksPriority: Int64? = nil, extInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RebuildMediaResponse {
        try await self.rebuildMedia(.init(fileId: fileId, subAppId: subAppId, startTimeOffset: startTimeOffset, endTimeOffset: endTimeOffset, repairInfo: repairInfo, videoFrameInterpolationInfo: videoFrameInterpolationInfo, superResolutionInfo: superResolutionInfo, hdrInfo: hdrInfo, videoDenoiseInfo: videoDenoiseInfo, audioDenoiseInfo: audioDenoiseInfo, colorInfo: colorInfo, sharpInfo: sharpInfo, faceInfo: faceInfo, lowLightInfo: lowLightInfo, scratchRepairInfo: scratchRepairInfo, artifactRepairInfo: artifactRepairInfo, targetInfo: targetInfo, sessionId: sessionId, sessionContext: sessionContext, tasksPriority: tasksPriority, extInfo: extInfo), region: region, logger: logger, on: eventLoop)
    }
}
