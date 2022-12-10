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

extension Cloudaudit {
    /// 查询AttributeKey的有效取值范围
    @inlinable
    public func getAttributeKey(_ input: GetAttributeKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetAttributeKeyResponse > {
        self.client.execute(action: "GetAttributeKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询AttributeKey的有效取值范围
    @inlinable
    public func getAttributeKey(_ input: GetAttributeKeyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetAttributeKeyResponse {
        try await self.client.execute(action: "GetAttributeKey", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// GetAttributeKey请求参数结构体
    public struct GetAttributeKeyRequest: TCRequestModel {
        /// 网站类型，取值范围是zh和en。如果不传值默认zh
        public let websiteType: String?
        
        public init (websiteType: String?) {
            self.websiteType = websiteType
        }
        
        enum CodingKeys: String, CodingKey {
            case websiteType = "WebsiteType"
        }
    }
    
    /// GetAttributeKey返回参数结构体
    public struct GetAttributeKeyResponse: TCResponseModel {
        /// AttributeKey的有效取值范围
        public let attributeKeyDetails: [AttributeKeyDetail]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case attributeKeyDetails = "AttributeKeyDetails"
            case requestId = "RequestId"
        }
    }
}
