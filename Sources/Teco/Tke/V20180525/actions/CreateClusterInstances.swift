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

extension Tke {
    /// 扩展集群节点
    ///
    /// 扩展(新建)集群节点
    @inlinable
    public func createClusterInstances(_ input: CreateClusterInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateClusterInstancesResponse > {
        self.client.execute(action: "CreateClusterInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 扩展集群节点
    ///
    /// 扩展(新建)集群节点
    @inlinable
    public func createClusterInstances(_ input: CreateClusterInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterInstancesResponse {
        try await self.client.execute(action: "CreateClusterInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateClusterInstances请求参数结构体
    public struct CreateClusterInstancesRequest: TCRequestModel {
        /// 集群 ID，请填写 查询集群列表 接口中返回的 clusterId 字段
        public let clusterId: String
        
        /// CVM创建透传参数，json化字符串格式，如需要保证扩展集群节点请求幂等性需要在此参数添加ClientToken字段，详见[CVM创建实例](https://cloud.tencent.com/document/product/213/15730)接口。
        public let runInstancePara: String
        
        /// 实例额外需要设置参数信息
        public let instanceAdvancedSettings: InstanceAdvancedSettings
        
        /// 校验规则相关选项，可配置跳过某些校验规则。目前支持GlobalRouteCIDRCheck（跳过GlobalRouter的相关校验），VpcCniCIDRCheck（跳过VpcCni相关校验）
        public let skipValidateOptions: [String]?
        
        public init (clusterId: String, runInstancePara: String, instanceAdvancedSettings: InstanceAdvancedSettings, skipValidateOptions: [String]?) {
            self.clusterId = clusterId
            self.runInstancePara = runInstancePara
            self.instanceAdvancedSettings = instanceAdvancedSettings
            self.skipValidateOptions = skipValidateOptions
        }
        
        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case runInstancePara = "RunInstancePara"
            case instanceAdvancedSettings = "InstanceAdvancedSettings"
            case skipValidateOptions = "SkipValidateOptions"
        }
    }
    
    /// CreateClusterInstances返回参数结构体
    public struct CreateClusterInstancesResponse: TCResponseModel {
        /// 节点实例ID
        public let instanceIdSet: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case instanceIdSet = "InstanceIdSet"
            case requestId = "RequestId"
        }
    }
}
