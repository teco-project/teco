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

extension Tiia {
    /// UpdateImage请求参数结构体
    public struct UpdateImageRequest: TCRequestModel {
        /// 图库ID。
        public let groupId: String

        /// 物品ID，最多支持64个字符。
        public let entityId: String

        /// 图片名称，最多支持64个字符。
        public let picName: String?

        /// 新的自定义标签，最多不超过10个，格式为JSON。
        public let tags: String?

        public init(groupId: String, entityId: String, picName: String? = nil, tags: String? = nil) {
            self.groupId = groupId
            self.entityId = entityId
            self.picName = picName
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case entityId = "EntityId"
            case picName = "PicName"
            case tags = "Tags"
        }
    }

    /// UpdateImage返回参数结构体
    public struct UpdateImageResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新图片
    ///
    /// 本接口支持根据图库ID、物品ID、图片名称来修改图片信息（暂仅支持修改Tags）
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable @discardableResult
    public func updateImage(_ input: UpdateImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateImageResponse> {
        self.client.execute(action: "UpdateImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新图片
    ///
    /// 本接口支持根据图库ID、物品ID、图片名称来修改图片信息（暂仅支持修改Tags）
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable @discardableResult
    public func updateImage(_ input: UpdateImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateImageResponse {
        try await self.client.execute(action: "UpdateImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新图片
    ///
    /// 本接口支持根据图库ID、物品ID、图片名称来修改图片信息（暂仅支持修改Tags）
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable @discardableResult
    public func updateImage(groupId: String, entityId: String, picName: String? = nil, tags: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateImageResponse> {
        self.updateImage(.init(groupId: groupId, entityId: entityId, picName: picName, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 更新图片
    ///
    /// 本接口支持根据图库ID、物品ID、图片名称来修改图片信息（暂仅支持修改Tags）
    ///
    /// >
    /// - 可前往 [图像搜索](https://cloud.tencent.com/document/product/1589) 产品文档中查看更多产品信息。
    @inlinable @discardableResult
    public func updateImage(groupId: String, entityId: String, picName: String? = nil, tags: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateImageResponse {
        try await self.updateImage(.init(groupId: groupId, entityId: entityId, picName: picName, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
