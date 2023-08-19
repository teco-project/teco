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

extension Gme {
    /// CreateApp请求参数结构体
    public struct CreateAppRequest: TCRequest {
        /// 应用名称
        public let appName: String

        /// 腾讯云项目ID，默认为0，表示默认项目
        public let projectId: UInt64?

        /// 需要支持的引擎列表，默认全选。
        /// 取值：android/ios/unity/cocos/unreal/windows
        public let engineList: [String]?

        /// 服务区域列表，默认全选。
        /// 取值：mainland-大陆地区，hmt-港澳台，sea-东南亚，na-北美，eu-欧洲，jpkr-日韩亚太，sa-南美，oc-澳洲，me-中东
        public let regionList: [String]?

        /// 实时语音服务配置数据
        public let realtimeSpeechConf: RealtimeSpeechConf?

        /// 语音消息服务配置数据
        public let voiceMessageConf: VoiceMessageConf?

        /// 语音分析服务配置数据
        public let voiceFilterConf: VoiceFilterConf?

        /// 语音转文本配置数据
        public let asrConf: AsrConf?

        /// 需要添加的标签列表
        public let tags: [Tag]?

        public init(appName: String, projectId: UInt64? = nil, engineList: [String]? = nil, regionList: [String]? = nil, realtimeSpeechConf: RealtimeSpeechConf? = nil, voiceMessageConf: VoiceMessageConf? = nil, voiceFilterConf: VoiceFilterConf? = nil, asrConf: AsrConf? = nil, tags: [Tag]? = nil) {
            self.appName = appName
            self.projectId = projectId
            self.engineList = engineList
            self.regionList = regionList
            self.realtimeSpeechConf = realtimeSpeechConf
            self.voiceMessageConf = voiceMessageConf
            self.voiceFilterConf = voiceFilterConf
            self.asrConf = asrConf
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case appName = "AppName"
            case projectId = "ProjectId"
            case engineList = "EngineList"
            case regionList = "RegionList"
            case realtimeSpeechConf = "RealtimeSpeechConf"
            case voiceMessageConf = "VoiceMessageConf"
            case voiceFilterConf = "VoiceFilterConf"
            case asrConf = "AsrConf"
            case tags = "Tags"
        }
    }

    /// CreateApp返回参数结构体
    public struct CreateAppResponse: TCResponse {
        /// 创建应用返回数据
        public let data: CreateAppResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 创建GME应用
    ///
    /// 本接口(CreateApp)用于创建一个GME应用。
    @inlinable
    public func createApp(_ input: CreateAppRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppResponse> {
        self.client.execute(action: "CreateApp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建GME应用
    ///
    /// 本接口(CreateApp)用于创建一个GME应用。
    @inlinable
    public func createApp(_ input: CreateAppRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppResponse {
        try await self.client.execute(action: "CreateApp", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建GME应用
    ///
    /// 本接口(CreateApp)用于创建一个GME应用。
    @inlinable
    public func createApp(appName: String, projectId: UInt64? = nil, engineList: [String]? = nil, regionList: [String]? = nil, realtimeSpeechConf: RealtimeSpeechConf? = nil, voiceMessageConf: VoiceMessageConf? = nil, voiceFilterConf: VoiceFilterConf? = nil, asrConf: AsrConf? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAppResponse> {
        self.createApp(.init(appName: appName, projectId: projectId, engineList: engineList, regionList: regionList, realtimeSpeechConf: realtimeSpeechConf, voiceMessageConf: voiceMessageConf, voiceFilterConf: voiceFilterConf, asrConf: asrConf, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 创建GME应用
    ///
    /// 本接口(CreateApp)用于创建一个GME应用。
    @inlinable
    public func createApp(appName: String, projectId: UInt64? = nil, engineList: [String]? = nil, regionList: [String]? = nil, realtimeSpeechConf: RealtimeSpeechConf? = nil, voiceMessageConf: VoiceMessageConf? = nil, voiceFilterConf: VoiceFilterConf? = nil, asrConf: AsrConf? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAppResponse {
        try await self.createApp(.init(appName: appName, projectId: projectId, engineList: engineList, regionList: regionList, realtimeSpeechConf: realtimeSpeechConf, voiceMessageConf: voiceMessageConf, voiceFilterConf: voiceFilterConf, asrConf: asrConf, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
