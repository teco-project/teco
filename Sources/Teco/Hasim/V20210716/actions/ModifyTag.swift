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

extension Hasim {
    /// ModifyTag请求参数结构体
    public struct ModifyTagRequest: TCRequestModel {
        /// 名称
        public let name: String

        /// 标签ID
        public let tagID: Int64

        /// 备注
        public let comment: String?

        public init(name: String, tagID: Int64, comment: String? = nil) {
            self.name = name
            self.tagID = tagID
            self.comment = comment
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case tagID = "TagID"
            case comment = "Comment"
        }
    }

    /// ModifyTag返回参数结构体
    public struct ModifyTagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑标签
    @inlinable @discardableResult
    public func modifyTag(_ input: ModifyTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTagResponse> {
        self.client.execute(action: "ModifyTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑标签
    @inlinable @discardableResult
    public func modifyTag(_ input: ModifyTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTagResponse {
        try await self.client.execute(action: "ModifyTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑标签
    @inlinable @discardableResult
    public func modifyTag(name: String, tagID: Int64, comment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTagResponse> {
        self.modifyTag(ModifyTagRequest(name: name, tagID: tagID, comment: comment), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑标签
    @inlinable @discardableResult
    public func modifyTag(name: String, tagID: Int64, comment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTagResponse {
        try await self.modifyTag(ModifyTagRequest(name: name, tagID: tagID, comment: comment), region: region, logger: logger, on: eventLoop)
    }
}