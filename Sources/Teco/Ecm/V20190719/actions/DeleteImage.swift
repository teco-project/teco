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
    /// DeleteImage请求参数结构体
    public struct DeleteImageRequest: TCRequestModel {
        /// 镜像ID列表。
        public let imageIDSet: [String]

        public init(imageIDSet: [String]) {
            self.imageIDSet = imageIDSet
        }

        enum CodingKeys: String, CodingKey {
            case imageIDSet = "ImageIDSet"
        }
    }

    /// DeleteImage返回参数结构体
    public struct DeleteImageResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除镜像
    @inlinable @discardableResult
    public func deleteImage(_ input: DeleteImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImageResponse> {
        self.client.execute(action: "DeleteImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除镜像
    @inlinable @discardableResult
    public func deleteImage(_ input: DeleteImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImageResponse {
        try await self.client.execute(action: "DeleteImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除镜像
    @inlinable @discardableResult
    public func deleteImage(imageIDSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImageResponse> {
        self.deleteImage(.init(imageIDSet: imageIDSet), region: region, logger: logger, on: eventLoop)
    }

    /// 删除镜像
    @inlinable @discardableResult
    public func deleteImage(imageIDSet: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImageResponse {
        try await self.deleteImage(.init(imageIDSet: imageIDSet), region: region, logger: logger, on: eventLoop)
    }
}
