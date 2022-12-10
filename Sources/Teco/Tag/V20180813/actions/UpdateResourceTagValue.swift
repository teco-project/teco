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
    /// 修改资源标签值
    ///
    /// 本接口用于修改资源已关联的标签值（标签键不变）
    @inlinable
    public func updateResourceTagValue(_ input: UpdateResourceTagValueRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateResourceTagValueResponse > {
        self.client.execute(action: "UpdateResourceTagValue", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改资源标签值
    ///
    /// 本接口用于修改资源已关联的标签值（标签键不变）
    @inlinable
    public func updateResourceTagValue(_ input: UpdateResourceTagValueRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateResourceTagValueResponse {
        try await self.client.execute(action: "UpdateResourceTagValue", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateResourceTagValue请求参数结构体
    public struct UpdateResourceTagValueRequest: TCRequestModel {
        /// 资源关联的标签键
        public let tagKey: String
        
        /// 修改后的标签值
        public let tagValue: String
        
        /// [ 资源六段式描述 ](https://cloud.tencent.com/document/product/598/10606)
        public let resource: String
        
        public init (tagKey: String, tagValue: String, resource: String) {
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
    
    /// UpdateResourceTagValue返回参数结构体
    public struct UpdateResourceTagValueResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
