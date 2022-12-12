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

extension Tcr {
    /// DeleteInternalEndpointDns请求参数结构体
    public struct DeleteInternalEndpointDnsRequest: TCRequestModel {
        /// tcr实例id
        public let instanceId: String
        
        /// 私有网络id
        public let vpcId: String
        
        /// tcr内网访问链路ip
        public let eniLBIp: String
        
        /// true：使用默认域名
        /// false:  使用带有vpc的域名
        public let usePublicDomain: Bool?
        
        /// 解析地域，需要保证和vpc处于同一地域，如果不填则默认为主实例地域
        public let regionName: String?
        
        public init (instanceId: String, vpcId: String, eniLBIp: String, usePublicDomain: Bool? = nil, regionName: String? = nil) {
            self.instanceId = instanceId
            self.vpcId = vpcId
            self.eniLBIp = eniLBIp
            self.usePublicDomain = usePublicDomain
            self.regionName = regionName
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case vpcId = "VpcId"
            case eniLBIp = "EniLBIp"
            case usePublicDomain = "UsePublicDomain"
            case regionName = "RegionName"
        }
    }
    
    /// DeleteInternalEndpointDns返回参数结构体
    public struct DeleteInternalEndpointDnsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 删除私有域名解析
    ///
    /// 删除tcr内网私有域名解析
    @inlinable
    public func deleteInternalEndpointDns(_ input: DeleteInternalEndpointDnsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteInternalEndpointDnsResponse > {
        self.client.execute(action: "DeleteInternalEndpointDns", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除私有域名解析
    ///
    /// 删除tcr内网私有域名解析
    @inlinable
    public func deleteInternalEndpointDns(_ input: DeleteInternalEndpointDnsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInternalEndpointDnsResponse {
        try await self.client.execute(action: "DeleteInternalEndpointDns", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
