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

extension Ump {
    /// SearchImage请求参数结构体
    public struct SearchImageRequest: TCRequest {
        /// 集团编码
        public let groupCode: String

        /// 广场ID
        public let mallId: UInt64

        /// 图片base64字符串
        public let image: String

        /// 时间戳，毫秒
        public let imageTime: UInt64

        public init(groupCode: String, mallId: UInt64, image: String, imageTime: UInt64) {
            self.groupCode = groupCode
            self.mallId = mallId
            self.image = image
            self.imageTime = imageTime
        }

        enum CodingKeys: String, CodingKey {
            case groupCode = "GroupCode"
            case mallId = "MallId"
            case image = "Image"
            case imageTime = "ImageTime"
        }
    }

    /// SearchImage返回参数结构体
    public struct SearchImageResponse: TCResponse {
        /// face id
        public let faceId: String

        /// 搜索结果列表
        public let results: [SearchResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case faceId = "FaceId"
            case results = "Results"
            case requestId = "RequestId"
        }
    }

    /// 以图搜图
    @inlinable
    public func searchImage(_ input: SearchImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchImageResponse> {
        self.client.execute(action: "SearchImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 以图搜图
    @inlinable
    public func searchImage(_ input: SearchImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchImageResponse {
        try await self.client.execute(action: "SearchImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 以图搜图
    @inlinable
    public func searchImage(groupCode: String, mallId: UInt64, image: String, imageTime: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchImageResponse> {
        self.searchImage(.init(groupCode: groupCode, mallId: mallId, image: image, imageTime: imageTime), region: region, logger: logger, on: eventLoop)
    }

    /// 以图搜图
    @inlinable
    public func searchImage(groupCode: String, mallId: UInt64, image: String, imageTime: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchImageResponse {
        try await self.searchImage(.init(groupCode: groupCode, mallId: mallId, image: image, imageTime: imageTime), region: region, logger: logger, on: eventLoop)
    }
}
