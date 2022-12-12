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

extension Gaap {
    /// DisableGlobalDomain请求参数结构体
    public struct DisableGlobalDomainRequest: TCRequestModel {
        /// 域名ID
        public let domainId: String
        
        public init (domainId: String) {
            self.domainId = domainId
        }
        
        enum CodingKeys: String, CodingKey {
            case domainId = "DomainId"
        }
    }
    
    /// DisableGlobalDomain返回参数结构体
    public struct DisableGlobalDomainResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 暂停域名解析
    @inlinable
    public func disableGlobalDomain(_ input: DisableGlobalDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DisableGlobalDomainResponse > {
        self.client.execute(action: "DisableGlobalDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 暂停域名解析
    @inlinable
    public func disableGlobalDomain(_ input: DisableGlobalDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableGlobalDomainResponse {
        try await self.client.execute(action: "DisableGlobalDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
