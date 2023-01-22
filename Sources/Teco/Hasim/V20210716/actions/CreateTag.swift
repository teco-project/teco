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
    /// CreateTag请求参数结构体
    public struct CreateTagRequest: TCRequestModel {
        /// 名称
        public let name: String

        /// 备注
        public let comment: String?

        public init(name: String, comment: String? = nil) {
            self.name = name
            self.comment = comment
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case comment = "Comment"
        }
    }

    /// CreateTag返回参数结构体
    public struct CreateTagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建标签
    @inlinable @discardableResult
    public func createTag(_ input: CreateTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTagResponse> {
        self.client.execute(action: "CreateTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建标签
    @inlinable @discardableResult
    public func createTag(_ input: CreateTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTagResponse {
        try await self.client.execute(action: "CreateTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建标签
    @inlinable @discardableResult
    public func createTag(name: String, comment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTagResponse> {
        self.createTag(CreateTagRequest(name: name, comment: comment), region: region, logger: logger, on: eventLoop)
    }

    /// 创建标签
    @inlinable @discardableResult
    public func createTag(name: String, comment: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTagResponse {
        try await self.createTag(CreateTagRequest(name: name, comment: comment), region: region, logger: logger, on: eventLoop)
    }
}
