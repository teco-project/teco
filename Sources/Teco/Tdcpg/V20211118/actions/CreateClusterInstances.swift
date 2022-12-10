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

extension Tdcpg {
    /// 创建实例
    ///
    /// 在集群中新建实例
    @inlinable
    public func createClusterInstances(_ input: CreateClusterInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateClusterInstancesResponse > {
        self.client.execute(action: "CreateClusterInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建实例
    ///
    /// 在集群中新建实例
    @inlinable
    public func createClusterInstances(_ input: CreateClusterInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterInstancesResponse {
        try await self.client.execute(action: "CreateClusterInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateClusterInstances请求参数结构体
    public struct CreateClusterInstancesRequest: TCRequestModel {
        /// 集群ID
        public let clusterId: String
        
        /// CPU核数。取值参考文档【购买指南】
        public let cpu: UInt64
        
        /// 内存大小，单位GiB。取值参考文档【购买指南】
        public let memory: UInt64
        
        /// 实例名，1-60个字符，可以包含中文、英文、数字和符号"-"、"_"、"."。不输入此参数时默认与InstanceId一致。
        public let instanceName: String?
        
        /// 新建实例的数量，默认为1。单集群下实例数量目前不能超过4个。
        public let instanceCount: UInt64?
        
        public init (clusterId: String, cpu: UInt64, memory: UInt64, instanceName: String?, instanceCount: UInt64?) {
            self.clusterId = clusterId
            self.cpu = cpu
            self.memory = memory
            self.instanceName = instanceName
            self.instanceCount = instanceCount
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case cpu = "CPU"
            case memory = "Memory"
            case instanceName = "InstanceName"
            case instanceCount = "InstanceCount"
        }
    }
    
    /// CreateClusterInstances返回参数结构体
    public struct CreateClusterInstancesResponse: TCResponseModel {
        /// 订单号
        public let dealNameSet: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dealNameSet = "DealNameSet"
            case requestId = "RequestId"
        }
    }
}
