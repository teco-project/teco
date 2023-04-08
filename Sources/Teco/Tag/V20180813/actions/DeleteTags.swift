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

import TecoCore

extension Tag {
    /// DeleteTags请求参数结构体
    public struct DeleteTagsRequest: TCRequestModel {
        /// 标签列表。
        /// N取值范围：0~9
        public let tags: [Tag]

        public init(tags: [Tag]) {
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }

    /// DeleteTags返回参数结构体
    public struct DeleteTagsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量删除标签
    ///
    /// 本接口用于批量删除标签键和标签值。
    @inlinable @discardableResult
    public func deleteTags(_ input: DeleteTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTagsResponse> {
        self.client.execute(action: "DeleteTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除标签
    ///
    /// 本接口用于批量删除标签键和标签值。
    @inlinable @discardableResult
    public func deleteTags(_ input: DeleteTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTagsResponse {
        try await self.client.execute(action: "DeleteTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除标签
    ///
    /// 本接口用于批量删除标签键和标签值。
    @inlinable @discardableResult
    public func deleteTags(tags: [Tag], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTagsResponse> {
        self.deleteTags(.init(tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 批量删除标签
    ///
    /// 本接口用于批量删除标签键和标签值。
    @inlinable @discardableResult
    public func deleteTags(tags: [Tag], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTagsResponse {
        try await self.deleteTags(.init(tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
