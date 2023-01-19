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

extension Bda {
    /// DetectBodyJoints请求参数结构体
    public struct DetectBodyJointsRequest: TCRequestModel {
        /// 图片 base64 数据，base64 编码后大小不可超过5M。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let image: String?

        /// 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        /// Url、Image必须提供一个，如果都提供，只使用 Url。
        /// 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的Url速度和稳定性可能受一定影响。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let url: String?

        /// 人体局部关键点识别，开启后对人体局部图（例如部分身体部位）进行关键点识别，输出人体关键点坐标，默认不开启
        /// 注意：若开启人体局部图片关键点识别，则BoundBox、Confidence返回为空。
        public let localBodySwitch: Bool?

        public init(image: String? = nil, url: String? = nil, localBodySwitch: Bool? = nil) {
            self.image = image
            self.url = url
            self.localBodySwitch = localBodySwitch
        }

        enum CodingKeys: String, CodingKey {
            case image = "Image"
            case url = "Url"
            case localBodySwitch = "LocalBodySwitch"
        }
    }

    /// DetectBodyJoints返回参数结构体
    public struct DetectBodyJointsResponse: TCResponseModel {
        /// 图中检测出的人体框和人体关键点， 包含14个人体关键点的坐标，建议根据人体框置信度筛选出合格的人体；
        public let bodyJointsResults: [BodyJointsResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case bodyJointsResults = "BodyJointsResults"
            case requestId = "RequestId"
        }
    }

    /// 人体关键点分析
    ///
    /// 检测图片中人体的14个关键点。建议用于人体图像清晰、无遮挡的场景。支持一张图片中存在多个人体的识别。
    @inlinable
    public func detectBodyJoints(_ input: DetectBodyJointsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectBodyJointsResponse> {
        self.client.execute(action: "DetectBodyJoints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 人体关键点分析
    ///
    /// 检测图片中人体的14个关键点。建议用于人体图像清晰、无遮挡的场景。支持一张图片中存在多个人体的识别。
    @inlinable
    public func detectBodyJoints(_ input: DetectBodyJointsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectBodyJointsResponse {
        try await self.client.execute(action: "DetectBodyJoints", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 人体关键点分析
    ///
    /// 检测图片中人体的14个关键点。建议用于人体图像清晰、无遮挡的场景。支持一张图片中存在多个人体的识别。
    @inlinable
    public func detectBodyJoints(image: String? = nil, url: String? = nil, localBodySwitch: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectBodyJointsResponse> {
        self.detectBodyJoints(DetectBodyJointsRequest(image: image, url: url, localBodySwitch: localBodySwitch), region: region, logger: logger, on: eventLoop)
    }

    /// 人体关键点分析
    ///
    /// 检测图片中人体的14个关键点。建议用于人体图像清晰、无遮挡的场景。支持一张图片中存在多个人体的识别。
    @inlinable
    public func detectBodyJoints(image: String? = nil, url: String? = nil, localBodySwitch: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectBodyJointsResponse {
        try await self.detectBodyJoints(DetectBodyJointsRequest(image: image, url: url, localBodySwitch: localBodySwitch), region: region, logger: logger, on: eventLoop)
    }
}
