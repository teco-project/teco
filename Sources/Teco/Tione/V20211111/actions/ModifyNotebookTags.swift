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

extension Tione {
    /// ModifyNotebookTags请求参数结构体
    public struct ModifyNotebookTagsRequest: TCRequest {
        /// Notebook Id
        public let id: String

        /// Notebook修改标签集合
        public let tags: [Tag]?

        public init(id: String, tags: [Tag]? = nil) {
            self.id = id
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case tags = "Tags"
        }
    }

    /// ModifyNotebookTags返回参数结构体
    public struct ModifyNotebookTagsResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改Notebook标签
    @inlinable @discardableResult
    public func modifyNotebookTags(_ input: ModifyNotebookTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNotebookTagsResponse> {
        self.client.execute(action: "ModifyNotebookTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改Notebook标签
    @inlinable @discardableResult
    public func modifyNotebookTags(_ input: ModifyNotebookTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNotebookTagsResponse {
        try await self.client.execute(action: "ModifyNotebookTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改Notebook标签
    @inlinable @discardableResult
    public func modifyNotebookTags(id: String, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyNotebookTagsResponse> {
        self.modifyNotebookTags(.init(id: id, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 修改Notebook标签
    @inlinable @discardableResult
    public func modifyNotebookTags(id: String, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNotebookTagsResponse {
        try await self.modifyNotebookTags(.init(id: id, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
