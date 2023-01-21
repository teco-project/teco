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

extension Mps {
    /// DeleteImageSpriteTemplate请求参数结构体
    public struct DeleteImageSpriteTemplateRequest: TCRequestModel {
        /// 雪碧图模板唯一标识。
        public let definition: UInt64

        public init(definition: UInt64) {
            self.definition = definition
        }

        enum CodingKeys: String, CodingKey {
            case definition = "Definition"
        }
    }

    /// DeleteImageSpriteTemplate返回参数结构体
    public struct DeleteImageSpriteTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除雪碧图模板
    ///
    /// 删除雪碧图模板。
    @inlinable @discardableResult
    public func deleteImageSpriteTemplate(_ input: DeleteImageSpriteTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImageSpriteTemplateResponse> {
        self.client.execute(action: "DeleteImageSpriteTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除雪碧图模板
    ///
    /// 删除雪碧图模板。
    @inlinable @discardableResult
    public func deleteImageSpriteTemplate(_ input: DeleteImageSpriteTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImageSpriteTemplateResponse {
        try await self.client.execute(action: "DeleteImageSpriteTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除雪碧图模板
    ///
    /// 删除雪碧图模板。
    @inlinable @discardableResult
    public func deleteImageSpriteTemplate(definition: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteImageSpriteTemplateResponse> {
        self.deleteImageSpriteTemplate(DeleteImageSpriteTemplateRequest(definition: definition), region: region, logger: logger, on: eventLoop)
    }

    /// 删除雪碧图模板
    ///
    /// 删除雪碧图模板。
    @inlinable @discardableResult
    public func deleteImageSpriteTemplate(definition: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteImageSpriteTemplateResponse {
        try await self.deleteImageSpriteTemplate(DeleteImageSpriteTemplateRequest(definition: definition), region: region, logger: logger, on: eventLoop)
    }
}
