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
    /// 删除私有网络
    ///
    /// 本接口(DeleteVpc)用于删除黑石私有网络(VPC)。
    /// 删除私有网络前，请清理该私有网络下所有资源，包括子网、负载均衡、弹性 IP、对等连接、NAT 网关、专线通道、SSLVPN 等资源。
    @inlinable
    public func deleteVpc(_ input: DeleteVpcRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteVpcResponse > {
        self.client.execute(action: "DeleteVpc", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除私有网络
    ///
    /// 本接口(DeleteVpc)用于删除黑石私有网络(VPC)。
    /// 删除私有网络前，请清理该私有网络下所有资源，包括子网、负载均衡、弹性 IP、对等连接、NAT 网关、专线通道、SSLVPN 等资源。
    @inlinable
    public func deleteVpc(_ input: DeleteVpcRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteVpcResponse {
        try await self.client.execute(action: "DeleteVpc", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteVpc请求参数结构体
    public struct DeleteVpcRequest: TCRequestModel {
        /// VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        public let vpcId: String
        
        public init (vpcId: String) {
            self.vpcId = vpcId
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
        }
    }
    
    /// DeleteVpc返回参数结构体
    public struct DeleteVpcResponse: TCResponseModel {
        /// 异步任务ID。
        public let taskId: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
}