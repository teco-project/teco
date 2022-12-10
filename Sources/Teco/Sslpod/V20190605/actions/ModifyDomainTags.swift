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

extension Sslpod {
    /// 修改域名tag
    @inlinable
    public func modifyDomainTags(_ input: ModifyDomainTagsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyDomainTagsResponse > {
        self.client.execute(action: "ModifyDomainTags", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改域名tag
    @inlinable
    public func modifyDomainTags(_ input: ModifyDomainTagsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDomainTagsResponse {
        try await self.client.execute(action: "ModifyDomainTags", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyDomainTags请求参数结构体
    public struct ModifyDomainTagsRequest: TCRequestModel {
        /// 账号下域名ID
        public let accountDomainId: Int64
        
        /// 更新后的tag，多个以逗号隔开
        public let tags: String
        
        public init (accountDomainId: Int64, tags: String) {
            self.accountDomainId = accountDomainId
            self.tags = tags
        }
        
        enum CodingKeys: String, CodingKey {
            case accountDomainId = "AccountDomainId"
            case tags = "Tags"
        }
    }
    
    /// ModifyDomainTags返回参数结构体
    public struct ModifyDomainTagsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
