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

extension Tag {
    /// CreateTag请求参数结构体
    public struct CreateTagRequest: TCRequest {
        /// 标签键
        public let tagKey: String

        /// 标签值
        public let tagValue: String

        public init(tagKey: String, tagValue: String) {
            self.tagKey = tagKey
            self.tagValue = tagValue
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }

    /// CreateTag返回参数结构体
    public struct CreateTagResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建标签
    ///
    /// 本接口用于创建一对标签键和标签值
    @inlinable @discardableResult
    public func createTag(_ input: CreateTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTagResponse> {
        self.client.execute(action: "CreateTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建标签
    ///
    /// 本接口用于创建一对标签键和标签值
    @inlinable @discardableResult
    public func createTag(_ input: CreateTagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTagResponse {
        try await self.client.execute(action: "CreateTag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建标签
    ///
    /// 本接口用于创建一对标签键和标签值
    @inlinable @discardableResult
    public func createTag(tagKey: String, tagValue: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTagResponse> {
        self.createTag(.init(tagKey: tagKey, tagValue: tagValue), region: region, logger: logger, on: eventLoop)
    }

    /// 创建标签
    ///
    /// 本接口用于创建一对标签键和标签值
    @inlinable @discardableResult
    public func createTag(tagKey: String, tagValue: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTagResponse {
        try await self.createTag(.init(tagKey: tagKey, tagValue: tagValue), region: region, logger: logger, on: eventLoop)
    }
}
