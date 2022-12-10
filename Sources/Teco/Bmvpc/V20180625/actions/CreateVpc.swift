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
    /// 创建黑石私有网络
    ///
    /// 创建黑石私有网络
    @inlinable
    public func createVpc(_ input: CreateVpcRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateVpcResponse > {
        self.client.execute(action: "CreateVpc", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建黑石私有网络
    ///
    /// 创建黑石私有网络
    @inlinable
    public func createVpc(_ input: CreateVpcRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVpcResponse {
        try await self.client.execute(action: "CreateVpc", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateVpc请求参数结构体
    public struct CreateVpcRequest: TCRequestModel {
        /// 私有网络的名称
        public let vpcName: String
        
        /// 私有网络的CIDR
        public let cidrBlock: String
        
        /// 私有网络的可用区
        public let zone: String
        
        /// 子网信息
        public let subnetSet: [VpcSubnetCreateInfo]?
        
        /// 是否启用内网监控
        public let enableMonitoring: Bool?
        
        public init (vpcName: String, cidrBlock: String, zone: String, subnetSet: [VpcSubnetCreateInfo]?, enableMonitoring: Bool?) {
            self.vpcName = vpcName
            self.cidrBlock = cidrBlock
            self.zone = zone
            self.subnetSet = subnetSet
            self.enableMonitoring = enableMonitoring
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcName = "VpcName"
            case cidrBlock = "CidrBlock"
            case zone = "Zone"
            case subnetSet = "SubnetSet"
            case enableMonitoring = "EnableMonitoring"
        }
    }
    
    /// CreateVpc返回参数结构体
    public struct CreateVpcResponse: TCResponseModel {
        /// 异步任务ID
        public let taskId: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
}