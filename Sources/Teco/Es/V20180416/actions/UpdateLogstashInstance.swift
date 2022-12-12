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

@_exported import struct Foundation.Date

extension Es {
    /// UpdateLogstashInstance请求参数结构体
    public struct UpdateLogstashInstanceRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 实例节点数量
        public let nodeNum: UInt64?
        
        /// 实例YML配置
        public let ymlConfig: String?
        
        /// 实例绑定的ES集群信息
        public let bindedES: LogstashBindedES?
        
        /// 实例名称
        public let instanceName: String?
        
        /// 扩展文件列表
        public let extendedFiles: [LogstashExtendedFile]?
        
        /// 实例规格
        public let nodeType: String?
        
        /// 节点磁盘容量
        public let diskSize: UInt64?
        
        /// 可维护时间段
        public let operationDuration: OperationDurationUpdated?
        
        public init (instanceId: String, nodeNum: UInt64? = nil, ymlConfig: String? = nil, bindedES: LogstashBindedES? = nil, instanceName: String? = nil, extendedFiles: [LogstashExtendedFile]? = nil, nodeType: String? = nil, diskSize: UInt64? = nil, operationDuration: OperationDurationUpdated? = nil) {
            self.instanceId = instanceId
            self.nodeNum = nodeNum
            self.ymlConfig = ymlConfig
            self.bindedES = bindedES
            self.instanceName = instanceName
            self.extendedFiles = extendedFiles
            self.nodeType = nodeType
            self.diskSize = diskSize
            self.operationDuration = operationDuration
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case nodeNum = "NodeNum"
            case ymlConfig = "YMLConfig"
            case bindedES = "BindedES"
            case instanceName = "InstanceName"
            case extendedFiles = "ExtendedFiles"
            case nodeType = "NodeType"
            case diskSize = "DiskSize"
            case operationDuration = "OperationDuration"
        }
    }
    
    /// UpdateLogstashInstance返回参数结构体
    public struct UpdateLogstashInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 更新Logstash实例
    ///
    /// 对集群进行节点规格变更，修改实例名称，修改配置，等操作。参数中InstanceId为必传参数，参数传递组合及含义如下：
    /// - InstanceName：修改实例名称(仅用于标识实例)
    /// - NodeNum: 修改实例节点数量（节点横向扩缩容，纵向扩缩容等）
    /// - YMLConfig: 修改实例YML配置
    /// - BindedES：修改绑定的ES集群配置
    /// 以上参数组合只能传递一种，多传或少传均会导致请求失败
    @inlinable
    public func updateLogstashInstance(_ input: UpdateLogstashInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateLogstashInstanceResponse > {
        self.client.execute(action: "UpdateLogstashInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新Logstash实例
    ///
    /// 对集群进行节点规格变更，修改实例名称，修改配置，等操作。参数中InstanceId为必传参数，参数传递组合及含义如下：
    /// - InstanceName：修改实例名称(仅用于标识实例)
    /// - NodeNum: 修改实例节点数量（节点横向扩缩容，纵向扩缩容等）
    /// - YMLConfig: 修改实例YML配置
    /// - BindedES：修改绑定的ES集群配置
    /// 以上参数组合只能传递一种，多传或少传均会导致请求失败
    @inlinable
    public func updateLogstashInstance(_ input: UpdateLogstashInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateLogstashInstanceResponse {
        try await self.client.execute(action: "UpdateLogstashInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
