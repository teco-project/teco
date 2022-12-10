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
    /// 批量创建标签
    ///
    /// 本接口用于创建多对标签键和标签值
    @inlinable
    public func createTags(_ input: CreateTagsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateTagsResponse > {
        self.client.execute(action: "CreateTags", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量创建标签
    ///
    /// 本接口用于创建多对标签键和标签值
    @inlinable
    public func createTags(_ input: CreateTagsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTagsResponse {
        try await self.client.execute(action: "CreateTags", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateTags请求参数结构体
    public struct CreateTagsRequest: TCRequestModel {
        /// 标签列表。
        /// N取值范围：0~9
        public let tags: [Tag]?
        
        public init (tags: [Tag]?) {
            self.tags = tags
        }
        
        enum CodingKeys: String, CodingKey {
            case tags = "Tags"
        }
    }
    
    /// CreateTags返回参数结构体
    public struct CreateTagsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
