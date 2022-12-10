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
    /// 获取域名权限
    ///
    /// 获取域名权限
    @inlinable
    public func describeDomainPurview(_ input: DescribeDomainPurviewRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDomainPurviewResponse > {
        self.client.execute(action: "DescribeDomainPurview", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取域名权限
    ///
    /// 获取域名权限
    @inlinable
    public func describeDomainPurview(_ input: DescribeDomainPurviewRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainPurviewResponse {
        try await self.client.execute(action: "DescribeDomainPurview", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDomainPurview请求参数结构体
    public struct DescribeDomainPurviewRequest: TCRequestModel {
        /// 域名
        public let domain: String
        
        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。可以通过接口DescribeDomainList查到所有的Domain以及DomainId
        public let domainId: UInt64?
        
        public init (domain: String, domainId: UInt64?) {
            self.domain = domain
            self.domainId = domainId
        }
        
        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case domainId = "DomainId"
        }
    }
    
    /// DescribeDomainPurview返回参数结构体
    public struct DescribeDomainPurviewResponse: TCResponseModel {
        /// 域名权限列表
        public let purviewList: [PurviewInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case purviewList = "PurviewList"
            case requestId = "RequestId"
        }
    }
}