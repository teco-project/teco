//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tag {
    /// AddResourceTag请求参数结构体
    public struct AddResourceTagRequest: TCRequestModel {
        /// 标签键
        public let tagKey: String

        /// 标签值
        public let tagValue: String

        /// [ 资源六段式描述 ](https://cloud.tencent.com/document/product/598/10606)
        public let resource: String

        public init(tagKey: String, tagValue: String, resource: String) {
            self.tagKey = tagKey
            self.tagValue = tagValue
            self.resource = resource
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
            case resource = "Resource"
        }
    }

    /// AddResourceTag返回参数结构体
    public struct AddResourceTagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 标签关联资源
    ///
    /// 本接口用于给标签关联资源
    @inlinable
    public func addResourceTag(_ input: AddResourceTagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AddResourceTagResponse > {
        self.client.execute(action: "AddResourceTag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 标签关联资源
    ///
    /// 本接口用于给标签关联资源
    @inlinable
    public func addResourceTag(_ input: AddResourceTagRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddResourceTagResponse {
        try await self.client.execute(action: "AddResourceTag", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 标签关联资源
    ///
    /// 本接口用于给标签关联资源
    @inlinable
    public func addResourceTag(tagKey: String, tagValue: String, resource: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AddResourceTagResponse > {
        self.addResourceTag(AddResourceTagRequest(tagKey: tagKey, tagValue: tagValue, resource: resource), logger: logger, on: eventLoop)
    }

    /// 标签关联资源
    ///
    /// 本接口用于给标签关联资源
    @inlinable
    public func addResourceTag(tagKey: String, tagValue: String, resource: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddResourceTagResponse {
        try await self.addResourceTag(AddResourceTagRequest(tagKey: tagKey, tagValue: tagValue, resource: resource), logger: logger, on: eventLoop)
    }
}
