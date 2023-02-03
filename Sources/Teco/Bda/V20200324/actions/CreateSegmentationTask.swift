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

extension Bda {
    /// CreateSegmentationTask请求参数结构体
    public struct CreateSegmentationTaskRequest: TCRequestModel {
        /// 需要分割的视频URL，可外网访问。
        public let videoUrl: String

        /// 背景图片URL。
        /// 可以将视频背景替换为输入的图片。
        /// 如果不输入背景图片，则输出人像区域mask。
        public let backgroundImageUrl: String?

        /// 预留字段，后期用于展示更多识别信息。
        public let config: String?

        public init(videoUrl: String, backgroundImageUrl: String? = nil, config: String? = nil) {
            self.videoUrl = videoUrl
            self.backgroundImageUrl = backgroundImageUrl
            self.config = config
        }

        enum CodingKeys: String, CodingKey {
            case videoUrl = "VideoUrl"
            case backgroundImageUrl = "BackgroundImageUrl"
            case config = "Config"
        }
    }

    /// CreateSegmentationTask返回参数结构体
    public struct CreateSegmentationTaskResponse: TCResponseModel {
        /// 任务标识ID,可以用与追溯任务状态，查看任务结果
        public let taskID: String

        /// 预估处理时间，单位为秒
        public let estimatedProcessingTime: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskID = "TaskID"
            case estimatedProcessingTime = "EstimatedProcessingTime"
            case requestId = "RequestId"
        }
    }

    /// 创建视频人像分割处理任务
    ///
    /// 本接口为人像分割在线处理接口组中的提交任务接口，可以对提交的资源进行处理视频流/图片流识别视频作品中的人像区域，进行一键抠像、背景替换、人像虚化等后期处理。
    @inlinable
    public func createSegmentationTask(_ input: CreateSegmentationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSegmentationTaskResponse> {
        self.client.execute(action: "CreateSegmentationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建视频人像分割处理任务
    ///
    /// 本接口为人像分割在线处理接口组中的提交任务接口，可以对提交的资源进行处理视频流/图片流识别视频作品中的人像区域，进行一键抠像、背景替换、人像虚化等后期处理。
    @inlinable
    public func createSegmentationTask(_ input: CreateSegmentationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSegmentationTaskResponse {
        try await self.client.execute(action: "CreateSegmentationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建视频人像分割处理任务
    ///
    /// 本接口为人像分割在线处理接口组中的提交任务接口，可以对提交的资源进行处理视频流/图片流识别视频作品中的人像区域，进行一键抠像、背景替换、人像虚化等后期处理。
    @inlinable
    public func createSegmentationTask(videoUrl: String, backgroundImageUrl: String? = nil, config: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSegmentationTaskResponse> {
        let input = CreateSegmentationTaskRequest(videoUrl: videoUrl, backgroundImageUrl: backgroundImageUrl, config: config)
        return self.client.execute(action: "CreateSegmentationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建视频人像分割处理任务
    ///
    /// 本接口为人像分割在线处理接口组中的提交任务接口，可以对提交的资源进行处理视频流/图片流识别视频作品中的人像区域，进行一键抠像、背景替换、人像虚化等后期处理。
    @inlinable
    public func createSegmentationTask(videoUrl: String, backgroundImageUrl: String? = nil, config: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSegmentationTaskResponse {
        let input = CreateSegmentationTaskRequest(videoUrl: videoUrl, backgroundImageUrl: backgroundImageUrl, config: config)
        return try await self.client.execute(action: "CreateSegmentationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
