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

extension Waf {
    /// 查询单个saas域名详情
    ///
    /// 查询单个saas域名详情
    @inlinable
    public func describeDomainDetailsSaas(_ input: DescribeDomainDetailsSaasRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDomainDetailsSaasResponse > {
        self.client.execute(action: "DescribeDomainDetailsSaas", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询单个saas域名详情
    ///
    /// 查询单个saas域名详情
    @inlinable
    public func describeDomainDetailsSaas(_ input: DescribeDomainDetailsSaasRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainDetailsSaasResponse {
        try await self.client.execute(action: "DescribeDomainDetailsSaas", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDomainDetailsSaas请求参数结构体
    public struct DescribeDomainDetailsSaasRequest: TCRequestModel {
        /// 域名
        public let domain: String
        
        /// 域名id
        public let domainId: String
        
        /// 实例id
        public let instanceId: String
        
        public init (domain: String, domainId: String, instanceId: String) {
            self.domain = domain
            self.domainId = domainId
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case domainId = "DomainId"
            case instanceId = "InstanceId"
        }
    }
    
    /// DescribeDomainDetailsSaas返回参数结构体
    public struct DescribeDomainDetailsSaasResponse: TCResponseModel {
        /// 域名详情
        public let domainsPartInfo: DomainsPartInfo
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case domainsPartInfo = "DomainsPartInfo"
            case requestId = "RequestId"
        }
    }
}