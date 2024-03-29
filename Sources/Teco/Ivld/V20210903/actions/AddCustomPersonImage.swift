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

extension Ivld {
    /// AddCustomPersonImage请求参数结构体
    public struct AddCustomPersonImageRequest: TCRequest {
        /// 自定义人物Id
        public let personId: String

        /// 自定义人物图片地址
        public let imageURL: String?

        /// 图片数据base64之后的结果
        public let image: String?

        public init(personId: String, imageURL: String? = nil, image: String? = nil) {
            self.personId = personId
            self.imageURL = imageURL
            self.image = image
        }

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case imageURL = "ImageURL"
            case image = "Image"
        }
    }

    /// AddCustomPersonImage返回参数结构体
    public struct AddCustomPersonImageResponse: TCResponse {
        /// 自定义人物Id
        public let personId: String

        /// 自定义人脸图片信息
        public let imageInfo: PersonImageInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case personId = "PersonId"
            case imageInfo = "ImageInfo"
            case requestId = "RequestId"
        }
    }

    /// 增加自定义人脸图片
    ///
    /// 增加自定义人脸图片，每个自定义人物最多可包含10张人脸图片
    ///
    /// 请注意，与创建自定义人物一样，图片数据优先级优于图片URL优先级
    @inlinable
    public func addCustomPersonImage(_ input: AddCustomPersonImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddCustomPersonImageResponse> {
        self.client.execute(action: "AddCustomPersonImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 增加自定义人脸图片
    ///
    /// 增加自定义人脸图片，每个自定义人物最多可包含10张人脸图片
    ///
    /// 请注意，与创建自定义人物一样，图片数据优先级优于图片URL优先级
    @inlinable
    public func addCustomPersonImage(_ input: AddCustomPersonImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddCustomPersonImageResponse {
        try await self.client.execute(action: "AddCustomPersonImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 增加自定义人脸图片
    ///
    /// 增加自定义人脸图片，每个自定义人物最多可包含10张人脸图片
    ///
    /// 请注意，与创建自定义人物一样，图片数据优先级优于图片URL优先级
    @inlinable
    public func addCustomPersonImage(personId: String, imageURL: String? = nil, image: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddCustomPersonImageResponse> {
        self.addCustomPersonImage(.init(personId: personId, imageURL: imageURL, image: image), region: region, logger: logger, on: eventLoop)
    }

    /// 增加自定义人脸图片
    ///
    /// 增加自定义人脸图片，每个自定义人物最多可包含10张人脸图片
    ///
    /// 请注意，与创建自定义人物一样，图片数据优先级优于图片URL优先级
    @inlinable
    public func addCustomPersonImage(personId: String, imageURL: String? = nil, image: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddCustomPersonImageResponse {
        try await self.addCustomPersonImage(.init(personId: personId, imageURL: imageURL, image: image), region: region, logger: logger, on: eventLoop)
    }
}
