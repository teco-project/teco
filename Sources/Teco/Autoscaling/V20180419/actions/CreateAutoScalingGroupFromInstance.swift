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

extension As {
    /// CreateAutoScalingGroupFromInstance请求参数结构体
    public struct CreateAutoScalingGroupFromInstanceRequest: TCRequestModel {
        /// 伸缩组名称，在您账号中必须唯一。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超55个字节。
        public let autoScalingGroupName: String
        
        /// 实例ID
        public let instanceId: String
        
        /// 最小实例数，取值范围为0-2000。
        public let minSize: Int64
        
        /// 最大实例数，取值范围为0-2000。
        public let maxSize: Int64
        
        /// 期望实例数，大小介于最小实例数和最大实例数之间。
        public let desiredCapacity: Int64?
        
        /// 是否继承实例标签，默认值为False
        public let inheritInstanceTag: Bool?
        
        public init (autoScalingGroupName: String, instanceId: String, minSize: Int64, maxSize: Int64, desiredCapacity: Int64? = nil, inheritInstanceTag: Bool? = nil) {
            self.autoScalingGroupName = autoScalingGroupName
            self.instanceId = instanceId
            self.minSize = minSize
            self.maxSize = maxSize
            self.desiredCapacity = desiredCapacity
            self.inheritInstanceTag = inheritInstanceTag
        }
        
        enum CodingKeys: String, CodingKey {
            case autoScalingGroupName = "AutoScalingGroupName"
            case instanceId = "InstanceId"
            case minSize = "MinSize"
            case maxSize = "MaxSize"
            case desiredCapacity = "DesiredCapacity"
            case inheritInstanceTag = "InheritInstanceTag"
        }
    }
    
    /// CreateAutoScalingGroupFromInstance返回参数结构体
    public struct CreateAutoScalingGroupFromInstanceResponse: TCResponseModel {
        /// 伸缩组ID
        public let autoScalingGroupId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
            case requestId = "RequestId"
        }
    }
    
    /// 根据实例创建启动配置及伸缩组
    ///
    /// 本接口（CreateAutoScalingGroupFromInstance）用于根据实例创建启动配置及伸缩组。
    /// 说明：根据按包年包月计费的实例所创建的伸缩组，其扩容的实例为按量计费实例。
    @inlinable
    public func createAutoScalingGroupFromInstance(_ input: CreateAutoScalingGroupFromInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAutoScalingGroupFromInstanceResponse > {
        self.client.execute(action: "CreateAutoScalingGroupFromInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 根据实例创建启动配置及伸缩组
    ///
    /// 本接口（CreateAutoScalingGroupFromInstance）用于根据实例创建启动配置及伸缩组。
    /// 说明：根据按包年包月计费的实例所创建的伸缩组，其扩容的实例为按量计费实例。
    @inlinable
    public func createAutoScalingGroupFromInstance(_ input: CreateAutoScalingGroupFromInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAutoScalingGroupFromInstanceResponse {
        try await self.client.execute(action: "CreateAutoScalingGroupFromInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
