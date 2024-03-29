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

extension Vrs {
    /// DetectEnvAndSoundQuality请求参数结构体
    public struct DetectEnvAndSoundQualityRequest: TCRequest {
        /// 标注文本信息 ID
        public let textId: String

        /// 语音数据 要使用base64编码(采用python语言时注意读取文件时需要转成base64字符串编码，例如：str(base64.b64encode(open("input.aac", mode="rb").read()), encoding='utf-8') )。
        public let audioData: String

        /// 音频格式，音频类型(wav,mp3,aac,m4a)
        public let codec: String

        /// 1:环境检测 2:音质检测
        public let typeId: Int64

        /// 音频采样率：
        ///
        /// 16000：16k（默认）
        public let sampleRate: Int64?

        public init(textId: String, audioData: String, codec: String, typeId: Int64, sampleRate: Int64? = nil) {
            self.textId = textId
            self.audioData = audioData
            self.codec = codec
            self.typeId = typeId
            self.sampleRate = sampleRate
        }

        enum CodingKeys: String, CodingKey {
            case textId = "TextId"
            case audioData = "AudioData"
            case codec = "Codec"
            case typeId = "TypeId"
            case sampleRate = "SampleRate"
        }
    }

    /// DetectEnvAndSoundQuality返回参数结构体
    public struct DetectEnvAndSoundQualityResponse: TCResponse {
        /// 检测结果
        public let data: DetectionEnvAndSoundQualityRespData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 环境检测和音频质量检测
    ///
    /// 本接口用于检测音频的环境和音频质量。
    /// • 请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    /// • 签名方法参考 公共参数 中签名方法v3。
    @inlinable
    public func detectEnvAndSoundQuality(_ input: DetectEnvAndSoundQualityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectEnvAndSoundQualityResponse> {
        self.client.execute(action: "DetectEnvAndSoundQuality", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 环境检测和音频质量检测
    ///
    /// 本接口用于检测音频的环境和音频质量。
    /// • 请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    /// • 签名方法参考 公共参数 中签名方法v3。
    @inlinable
    public func detectEnvAndSoundQuality(_ input: DetectEnvAndSoundQualityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectEnvAndSoundQualityResponse {
        try await self.client.execute(action: "DetectEnvAndSoundQuality", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 环境检测和音频质量检测
    ///
    /// 本接口用于检测音频的环境和音频质量。
    /// • 请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    /// • 签名方法参考 公共参数 中签名方法v3。
    @inlinable
    public func detectEnvAndSoundQuality(textId: String, audioData: String, codec: String, typeId: Int64, sampleRate: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectEnvAndSoundQualityResponse> {
        self.detectEnvAndSoundQuality(.init(textId: textId, audioData: audioData, codec: codec, typeId: typeId, sampleRate: sampleRate), region: region, logger: logger, on: eventLoop)
    }

    /// 环境检测和音频质量检测
    ///
    /// 本接口用于检测音频的环境和音频质量。
    /// • 请求方法为 HTTP POST , Content-Type为"application/json; charset=utf-8"
    /// • 签名方法参考 公共参数 中签名方法v3。
    @inlinable
    public func detectEnvAndSoundQuality(textId: String, audioData: String, codec: String, typeId: Int64, sampleRate: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectEnvAndSoundQualityResponse {
        try await self.detectEnvAndSoundQuality(.init(textId: textId, audioData: audioData, codec: codec, typeId: typeId, sampleRate: sampleRate), region: region, logger: logger, on: eventLoop)
    }
}
