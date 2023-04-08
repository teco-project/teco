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

extension Hasim {
    /// DeleteTag请求参数结构体
    public struct DeleteTagRequest: TCRequestModel {
        /// 标签ID
        public let tagID: Int64

        public init(tagID: Int64) {
            self.tagID = tagID
        }

        enum CodingKeys: String, CodingKey {
            case tagID = "TagID"
        }
    }

    /// DeleteTag返回参数结构体
    public struct DeleteTagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除标签
    @inlinable @discardableResult
    public func deleteTag(_ input: DeleteTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTagResponse> {
        self.client.execute(action: "DeleteTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除标签
    @inlinable @discardableResult
    public func deleteTag(_ input: DeleteTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTagResponse {
        try await self.client.execute(action: "DeleteTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除标签
    @inlinable @discardableResult
    public func deleteTag(tagID: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTagResponse> {
        self.deleteTag(.init(tagID: tagID), region: region, logger: logger, on: eventLoop)
    }

    /// 删除标签
    @inlinable @discardableResult
    public func deleteTag(tagID: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTagResponse {
        try await self.deleteTag(.init(tagID: tagID), region: region, logger: logger, on: eventLoop)
    }
}
