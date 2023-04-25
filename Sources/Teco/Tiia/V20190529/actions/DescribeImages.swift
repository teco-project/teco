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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tiia {
    /// DescribeImages请求参数结构体
    public struct DescribeImagesRequest: TCRequestModel {
        /// 图库名称。
        public let groupId: String

        /// 物品ID。
        public let entityId: String

        /// 图片名称。
        public let picName: String?

        public init(groupId: String, entityId: String, picName: String? = nil) {
            self.groupId = groupId
            self.entityId = entityId
            self.picName = picName
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case entityId = "EntityId"
            case picName = "PicName"
        }
    }

    /// DescribeImages返回参数结构体
    public struct DescribeImagesResponse: TCResponseModel {
        /// 图库名称。
        public let groupId: String

        /// 物品ID。
        public let entityId: String

        /// 图片信息。
        public let imageInfos: [ImageInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case entityId = "EntityId"
            case imageInfos = "ImageInfos"
            case requestId = "RequestId"
        }
    }

    /// 查询图片信息
    ///
    /// 获取指定图片库中的图片列表。
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable
    public func describeImages(_ input: DescribeImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImagesResponse> {
        self.client.execute(action: "DescribeImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询图片信息
    ///
    /// 获取指定图片库中的图片列表。
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable
    public func describeImages(_ input: DescribeImagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImagesResponse {
        try await self.client.execute(action: "DescribeImages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询图片信息
    ///
    /// 获取指定图片库中的图片列表。
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable
    public func describeImages(groupId: String, entityId: String, picName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImagesResponse> {
        self.describeImages(.init(groupId: groupId, entityId: entityId, picName: picName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询图片信息
    ///
    /// 获取指定图片库中的图片列表。
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable
    public func describeImages(groupId: String, entityId: String, picName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImagesResponse {
        try await self.describeImages(.init(groupId: groupId, entityId: entityId, picName: picName), region: region, logger: logger, on: eventLoop)
    }
}
