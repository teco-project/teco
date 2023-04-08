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

extension Ie {
    /// CreateMediaQualityRestorationTask请求参数结构体
    public struct CreateMediaQualityRestorationTaskRequest: TCRequestModel {
        /// 源文件地址。
        public let downInfo: DownInfo

        /// 画质重生任务参数信息。
        public let transInfo: [SubTaskTranscodeInfo]

        /// 任务结束后文件存储信息。
        public let saveInfo: SaveInfo

        /// 任务结果回调地址信息。
        public let callbackInfo: CallbackInfo?

        /// 极速高清体验馆渠道标志。
        public let topSpeedCodecChannel: UInt64?

        public init(downInfo: DownInfo, transInfo: [SubTaskTranscodeInfo], saveInfo: SaveInfo, callbackInfo: CallbackInfo? = nil, topSpeedCodecChannel: UInt64? = nil) {
            self.downInfo = downInfo
            self.transInfo = transInfo
            self.saveInfo = saveInfo
            self.callbackInfo = callbackInfo
            self.topSpeedCodecChannel = topSpeedCodecChannel
        }

        enum CodingKeys: String, CodingKey {
            case downInfo = "DownInfo"
            case transInfo = "TransInfo"
            case saveInfo = "SaveInfo"
            case callbackInfo = "CallbackInfo"
            case topSpeedCodecChannel = "TopSpeedCodecChannel"
        }
    }

    /// CreateMediaQualityRestorationTask返回参数结构体
    public struct CreateMediaQualityRestorationTaskResponse: TCResponseModel {
        /// 画质重生任务ID，可以通过该ID查询任务状态。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建画质重生任务
    ///
    /// 创建画质重生任务，对视频进行转码、去噪、去划痕、去毛刺、超分、细节增强和色彩增强。
    @inlinable
    public func createMediaQualityRestorationTask(_ input: CreateMediaQualityRestorationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMediaQualityRestorationTaskResponse> {
        self.client.execute(action: "CreateMediaQualityRestorationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建画质重生任务
    ///
    /// 创建画质重生任务，对视频进行转码、去噪、去划痕、去毛刺、超分、细节增强和色彩增强。
    @inlinable
    public func createMediaQualityRestorationTask(_ input: CreateMediaQualityRestorationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMediaQualityRestorationTaskResponse {
        try await self.client.execute(action: "CreateMediaQualityRestorationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建画质重生任务
    ///
    /// 创建画质重生任务，对视频进行转码、去噪、去划痕、去毛刺、超分、细节增强和色彩增强。
    @inlinable
    public func createMediaQualityRestorationTask(downInfo: DownInfo, transInfo: [SubTaskTranscodeInfo], saveInfo: SaveInfo, callbackInfo: CallbackInfo? = nil, topSpeedCodecChannel: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMediaQualityRestorationTaskResponse> {
        self.createMediaQualityRestorationTask(.init(downInfo: downInfo, transInfo: transInfo, saveInfo: saveInfo, callbackInfo: callbackInfo, topSpeedCodecChannel: topSpeedCodecChannel), region: region, logger: logger, on: eventLoop)
    }

    /// 创建画质重生任务
    ///
    /// 创建画质重生任务，对视频进行转码、去噪、去划痕、去毛刺、超分、细节增强和色彩增强。
    @inlinable
    public func createMediaQualityRestorationTask(downInfo: DownInfo, transInfo: [SubTaskTranscodeInfo], saveInfo: SaveInfo, callbackInfo: CallbackInfo? = nil, topSpeedCodecChannel: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMediaQualityRestorationTaskResponse {
        try await self.createMediaQualityRestorationTask(.init(downInfo: downInfo, transInfo: transInfo, saveInfo: saveInfo, callbackInfo: callbackInfo, topSpeedCodecChannel: topSpeedCodecChannel), region: region, logger: logger, on: eventLoop)
    }
}
