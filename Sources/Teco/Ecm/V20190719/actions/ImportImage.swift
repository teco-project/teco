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

extension Ecm {
    /// ImportImage请求参数结构体
    public struct ImportImageRequest: TCRequestModel {
        /// 镜像的Id。
        public let imageId: String

        /// 镜像的描述。
        public let imageDescription: String

        /// 源地域
        public let sourceRegion: String

        public init(imageId: String, imageDescription: String, sourceRegion: String) {
            self.imageId = imageId
            self.imageDescription = imageDescription
            self.sourceRegion = sourceRegion
        }

        enum CodingKeys: String, CodingKey {
            case imageId = "ImageId"
            case imageDescription = "ImageDescription"
            case sourceRegion = "SourceRegion"
        }
    }

    /// ImportImage返回参数结构体
    public struct ImportImageResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 导入镜像
    ///
    /// 从CVM产品导入镜像到ECM
    @inlinable @discardableResult
    public func importImage(_ input: ImportImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportImageResponse> {
        self.client.execute(action: "ImportImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导入镜像
    ///
    /// 从CVM产品导入镜像到ECM
    @inlinable @discardableResult
    public func importImage(_ input: ImportImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportImageResponse {
        try await self.client.execute(action: "ImportImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导入镜像
    ///
    /// 从CVM产品导入镜像到ECM
    @inlinable @discardableResult
    public func importImage(imageId: String, imageDescription: String, sourceRegion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ImportImageResponse> {
        self.importImage(.init(imageId: imageId, imageDescription: imageDescription, sourceRegion: sourceRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 导入镜像
    ///
    /// 从CVM产品导入镜像到ECM
    @inlinable @discardableResult
    public func importImage(imageId: String, imageDescription: String, sourceRegion: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ImportImageResponse {
        try await self.importImage(.init(imageId: imageId, imageDescription: imageDescription, sourceRegion: sourceRegion), region: region, logger: logger, on: eventLoop)
    }
}
