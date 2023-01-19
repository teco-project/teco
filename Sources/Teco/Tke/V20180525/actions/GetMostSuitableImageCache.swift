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

extension Tke {
    /// GetMostSuitableImageCache请求参数结构体
    public struct GetMostSuitableImageCacheRequest: TCRequestModel {
        /// 容器镜像列表
        public let images: [String]

        public init(images: [String]) {
            self.images = images
        }

        enum CodingKeys: String, CodingKey {
            case images = "Images"
        }
    }

    /// GetMostSuitableImageCache返回参数结构体
    public struct GetMostSuitableImageCacheResponse: TCResponseModel {
        /// 是否有匹配的镜像缓存
        public let found: Bool

        /// 匹配的镜像缓存
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let imageCache: ImageCache?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case found = "Found"
            case imageCache = "ImageCache"
            case requestId = "RequestId"
        }
    }

    /// 查询匹配的镜像缓存
    ///
    /// 根据镜像列表，查询匹配的镜像缓存
    @inlinable
    public func getMostSuitableImageCache(_ input: GetMostSuitableImageCacheRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMostSuitableImageCacheResponse> {
        self.client.execute(action: "GetMostSuitableImageCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询匹配的镜像缓存
    ///
    /// 根据镜像列表，查询匹配的镜像缓存
    @inlinable
    public func getMostSuitableImageCache(_ input: GetMostSuitableImageCacheRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMostSuitableImageCacheResponse {
        try await self.client.execute(action: "GetMostSuitableImageCache", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询匹配的镜像缓存
    ///
    /// 根据镜像列表，查询匹配的镜像缓存
    @inlinable
    public func getMostSuitableImageCache(images: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetMostSuitableImageCacheResponse> {
        self.getMostSuitableImageCache(GetMostSuitableImageCacheRequest(images: images), region: region, logger: logger, on: eventLoop)
    }

    /// 查询匹配的镜像缓存
    ///
    /// 根据镜像列表，查询匹配的镜像缓存
    @inlinable
    public func getMostSuitableImageCache(images: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetMostSuitableImageCacheResponse {
        try await self.getMostSuitableImageCache(GetMostSuitableImageCacheRequest(images: images), region: region, logger: logger, on: eventLoop)
    }
}
