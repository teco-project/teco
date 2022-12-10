//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Dnspod {
    /// 添加域名
    ///
    /// 添加域名
    @inlinable
    public func createDomain(_ input: CreateDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateDomainResponse > {
        self.client.execute(action: "CreateDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 添加域名
    ///
    /// 添加域名
    @inlinable
    public func createDomain(_ input: CreateDomainRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDomainResponse {
        try await self.client.execute(action: "CreateDomain", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateDomain请求参数结构体
    public struct CreateDomainRequest: TCRequestModel {
        /// 域名
        public let domain: String
        
        /// 域名分组ID。可以通过接口DescribeDomainGroupList查看当前域名分组信息
        public let groupId: UInt64?
        
        /// 是否星标域名，”yes”、”no” 分别代表是和否。
        public let isMark: String?
        
        public init (domain: String, groupId: UInt64?, isMark: String?) {
            self.domain = domain
            self.groupId = groupId
            self.isMark = isMark
        }
        
        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case groupId = "GroupId"
            case isMark = "IsMark"
        }
    }
    
    /// CreateDomain返回参数结构体
    public struct CreateDomainResponse: TCResponseModel {
        /// 域名信息
        public let domainInfo: DomainCreateInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case domainInfo = "DomainInfo"
            case requestId = "RequestId"
        }
    }
}