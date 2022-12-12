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

extension Vpc {
    /// CreateVpcEndPoint请求参数结构体
    public struct CreateVpcEndPointRequest: TCRequestModel {
        /// VPC实例ID。
        public let vpcId: String
        
        /// 子网实例ID。
        public let subnetId: String
        
        /// 终端节点名称。
        public let endPointName: String
        
        /// 终端节点服务ID。
        public let endPointServiceId: String
        
        /// 终端节点VIP，可以指定IP申请。
        public let endPointVip: String?
        
        /// 安全组ID。
        public let securityGroupId: String?
        
        public init (vpcId: String, subnetId: String, endPointName: String, endPointServiceId: String, endPointVip: String? = nil, securityGroupId: String? = nil) {
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.endPointName = endPointName
            self.endPointServiceId = endPointServiceId
            self.endPointVip = endPointVip
            self.securityGroupId = securityGroupId
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case endPointName = "EndPointName"
            case endPointServiceId = "EndPointServiceId"
            case endPointVip = "EndPointVip"
            case securityGroupId = "SecurityGroupId"
        }
    }
    
    /// CreateVpcEndPoint返回参数结构体
    public struct CreateVpcEndPointResponse: TCResponseModel {
        /// 终端节点对象详细信息。
        public let endPoint: EndPoint
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case endPoint = "EndPoint"
            case requestId = "RequestId"
        }
    }
    
    /// 创建终端节点
    ///
    /// 创建终端节点。
    @inlinable
    public func createVpcEndPoint(_ input: CreateVpcEndPointRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateVpcEndPointResponse > {
        self.client.execute(action: "CreateVpcEndPoint", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建终端节点
    ///
    /// 创建终端节点。
    @inlinable
    public func createVpcEndPoint(_ input: CreateVpcEndPointRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpcEndPointResponse {
        try await self.client.execute(action: "CreateVpcEndPoint", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
