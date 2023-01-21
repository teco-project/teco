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

extension Ape {
    /// DescribeImage请求参数结构体
    public struct DescribeImageRequest: TCRequestModel {
        /// 图片ID
        public let imageId: UInt64

        public init(imageId: UInt64) {
            self.imageId = imageId
        }

        enum CodingKeys: String, CodingKey {
            case imageId = "ImageId"
        }
    }

    /// DescribeImage返回参数结构体
    public struct DescribeImageResponse: TCResponseModel {
        /// 图片ID
        public let imageId: UInt64

        /// 图片标题
        public let title: String

        /// 图片描述
        public let description: String

        /// 图片预览链接
        public let previewUrl: String

        /// 图片缩略图
        public let thumbUrl: String

        /// 图片供应商
        public let vendor: String

        /// 图片售卖组合信息
        public let marshals: [ImageMarshal]

        /// 宽
        public let width: Int64

        /// 高
        public let height: Int64

        /// 图片格式 jpg/eps/psd/...
        public let imageFormat: String

        /// 图片类型 摄影图片、插画、漫画、图表、矢量、psd、全景、gif、模板
        public let imageSenseType: String

        /// 关键词，多关键词用空格分隔
        public let keywords: String

        /// 分层图库id
        public let layeredGalleryId: Int64

        /// 构图方式：horizontal:横图、vertical:竖图、square:方图
        public let orientation: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageId = "ImageId"
            case title = "Title"
            case description = "Description"
            case previewUrl = "PreviewUrl"
            case thumbUrl = "ThumbUrl"
            case vendor = "Vendor"
            case marshals = "Marshals"
            case width = "Width"
            case height = "Height"
            case imageFormat = "ImageFormat"
            case imageSenseType = "ImageSenseType"
            case keywords = "Keywords"
            case layeredGalleryId = "LayeredGalleryId"
            case orientation = "Orientation"
            case requestId = "RequestId"
        }
    }

    /// 查询图片详情
    ///
    /// 根据ID查询一张图片的详细信息
    @inlinable
    public func describeImage(_ input: DescribeImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageResponse> {
        self.client.execute(action: "DescribeImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询图片详情
    ///
    /// 根据ID查询一张图片的详细信息
    @inlinable
    public func describeImage(_ input: DescribeImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageResponse {
        try await self.client.execute(action: "DescribeImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询图片详情
    ///
    /// 根据ID查询一张图片的详细信息
    @inlinable
    public func describeImage(imageId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageResponse> {
        self.describeImage(DescribeImageRequest(imageId: imageId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询图片详情
    ///
    /// 根据ID查询一张图片的详细信息
    @inlinable
    public func describeImage(imageId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageResponse {
        try await self.describeImage(DescribeImageRequest(imageId: imageId), region: region, logger: logger, on: eventLoop)
    }
}
