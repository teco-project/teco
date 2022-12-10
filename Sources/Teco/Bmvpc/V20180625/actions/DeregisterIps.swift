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

extension Bmvpc {
    /// 注销私有网络IP
    ///
    /// 注销私有网络IP为空闲
    @inlinable
    public func deregisterIps(_ input: DeregisterIpsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeregisterIpsResponse > {
        self.client.execute(action: "DeregisterIps", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 注销私有网络IP
    ///
    /// 注销私有网络IP为空闲
    @inlinable
    public func deregisterIps(_ input: DeregisterIpsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeregisterIpsResponse {
        try await self.client.execute(action: "DeregisterIps", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeregisterIps请求参数结构体
    public struct DeregisterIpsRequest: TCRequestModel {
        /// 私有网络ID
        public let vpcId: String
        
        /// 注销指定IP的列表
        public let ipSet: [String]
        
        /// 私有网络子网ID
        public let subnetId: String?
        
        public init (vpcId: String, ipSet: [String], subnetId: String?) {
            self.vpcId = vpcId
            self.ipSet = ipSet
            self.subnetId = subnetId
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case ipSet = "IpSet"
            case subnetId = "SubnetId"
        }
    }
    
    /// DeregisterIps返回参数结构体
    public struct DeregisterIpsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}