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

extension Vpc {
    /// 删除基础网络互通
    ///
    /// 本接口(DetachClassicLinkVpc)用于删除私有网络和基础网络设备互通。
    /// >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    /// >
    @inlinable
    public func detachClassicLinkVpc(_ input: DetachClassicLinkVpcRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DetachClassicLinkVpcResponse > {
        self.client.execute(action: "DetachClassicLinkVpc", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除基础网络互通
    ///
    /// 本接口(DetachClassicLinkVpc)用于删除私有网络和基础网络设备互通。
    /// >?本接口为异步接口，可调用 [DescribeVpcTaskResult](https://cloud.tencent.com/document/api/215/59037) 接口查询任务执行结果，待任务执行成功后再进行其他操作。
    /// >
    @inlinable
    public func detachClassicLinkVpc(_ input: DetachClassicLinkVpcRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetachClassicLinkVpcResponse {
        try await self.client.execute(action: "DetachClassicLinkVpc", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DetachClassicLinkVpc请求参数结构体
    public struct DetachClassicLinkVpcRequest: TCRequestModel {
        /// VPC实例ID。可通过DescribeVpcs接口返回值中的VpcId获取。
        public let vpcId: String
        
        /// CVM实例ID查询。形如：ins-r8hr2upy。
        public let instanceIds: [String]
        
        public init (vpcId: String, instanceIds: [String]) {
            self.vpcId = vpcId
            self.instanceIds = instanceIds
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcId = "VpcId"
            case instanceIds = "InstanceIds"
        }
    }
    
    /// DetachClassicLinkVpc返回参数结构体
    public struct DetachClassicLinkVpcResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}