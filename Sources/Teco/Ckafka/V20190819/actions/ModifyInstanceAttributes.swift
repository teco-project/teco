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

extension Ckafka {
    /// 设置实例属性
    ///
    /// 设置实例属性
    @inlinable
    public func modifyInstanceAttributes(_ input: ModifyInstanceAttributesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyInstanceAttributesResponse > {
        self.client.execute(action: "ModifyInstanceAttributes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 设置实例属性
    ///
    /// 设置实例属性
    @inlinable
    public func modifyInstanceAttributes(_ input: ModifyInstanceAttributesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyInstanceAttributesResponse {
        try await self.client.execute(action: "ModifyInstanceAttributes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyInstanceAttributes请求参数结构体
    public struct ModifyInstanceAttributesRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String
        
        /// 实例日志的最长保留时间，单位分钟，最大30天，0代表不开启日志保留时间回收策略
        public let msgRetentionTime: Int64?
        
        /// 实例名称，是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        public let instanceName: String?
        
        /// 实例配置
        public let config: ModifyInstanceAttributesConfig
        
        /// 动态消息保留策略配置
        public let dynamicRetentionConfig: DynamicRetentionTime
        
        /// 修改升配置rebalance时间
        public let rebalanceTime: Int64?
        
        /// 时间戳
        public let publicNetwork: Int64?
        
        /// 动态硬盘扩容策略配置
        public let dynamicDiskConfig: DynamicDiskConfig
        
        /// 实例级别单条消息大小（单位byte)
        public let maxMessageByte: UInt64?
        
        public init (instanceId: String, msgRetentionTime: Int64?, instanceName: String?, config: ModifyInstanceAttributesConfig, dynamicRetentionConfig: DynamicRetentionTime, rebalanceTime: Int64?, publicNetwork: Int64?, dynamicDiskConfig: DynamicDiskConfig, maxMessageByte: UInt64?) {
            self.instanceId = instanceId
            self.msgRetentionTime = msgRetentionTime
            self.instanceName = instanceName
            self.config = config
            self.dynamicRetentionConfig = dynamicRetentionConfig
            self.rebalanceTime = rebalanceTime
            self.publicNetwork = publicNetwork
            self.dynamicDiskConfig = dynamicDiskConfig
            self.maxMessageByte = maxMessageByte
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case msgRetentionTime = "MsgRetentionTime"
            case instanceName = "InstanceName"
            case config = "Config"
            case dynamicRetentionConfig = "DynamicRetentionConfig"
            case rebalanceTime = "RebalanceTime"
            case publicNetwork = "PublicNetwork"
            case dynamicDiskConfig = "DynamicDiskConfig"
            case maxMessageByte = "MaxMessageByte"
        }
    }
    
    /// ModifyInstanceAttributes返回参数结构体
    public struct ModifyInstanceAttributesResponse: TCResponseModel {
        /// 返回结果
        public let result: JgwOperateResponse
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}