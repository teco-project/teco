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

extension Mongodb {
    /// 获取当前实例可修改的参数列表
    ///
    /// 本接口(DescribeInstanceParams)用于查询当前实例可修改的参数列表。
    @inlinable
    public func describeInstanceParams(_ input: DescribeInstanceParamsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeInstanceParamsResponse > {
        self.client.execute(action: "DescribeInstanceParams", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取当前实例可修改的参数列表
    ///
    /// 本接口(DescribeInstanceParams)用于查询当前实例可修改的参数列表。
    @inlinable
    public func describeInstanceParams(_ input: DescribeInstanceParamsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceParamsResponse {
        try await self.client.execute(action: "DescribeInstanceParams", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeInstanceParams请求参数结构体
    public struct DescribeInstanceParamsRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// DescribeInstanceParams返回参数结构体
    public struct DescribeInstanceParamsResponse: TCResponseModel {
        /// 值为枚举类型参数集合
        public let instanceEnumParam: [InstanceEnumParam]
        
        /// 值为integer类型参数集合
        public let instanceIntegerParam: [InstanceIntegerParam]
        
        /// 值为text类型的参数集合
        public let instanceTextParam: [InstanceTextParam]
        
        /// 值为混合类型的参数集合
        public let instanceMultiParam: [InstanceMultiParam]
        
        /// 当前实例支持修改的参数个数统计 如0
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case instanceEnumParam = "InstanceEnumParam"
            case instanceIntegerParam = "InstanceIntegerParam"
            case instanceTextParam = "InstanceTextParam"
            case instanceMultiParam = "InstanceMultiParam"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}
