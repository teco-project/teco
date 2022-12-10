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

extension Tse {
    /// 查询nacos服务接口列表
    @inlinable
    public func describeNacosServerInterfaces(_ input: DescribeNacosServerInterfacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeNacosServerInterfacesResponse > {
        self.client.execute(action: "DescribeNacosServerInterfaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询nacos服务接口列表
    @inlinable
    public func describeNacosServerInterfaces(_ input: DescribeNacosServerInterfacesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNacosServerInterfacesResponse {
        try await self.client.execute(action: "DescribeNacosServerInterfaces", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeNacosServerInterfaces请求参数结构体
    public struct DescribeNacosServerInterfacesRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String?
        
        /// 返回的列表个数
        public let limit: UInt64?
        
        /// 返回的列表起始偏移量
        public let offset: UInt64?
        
        public init (instanceId: String?, limit: UInt64?, offset: UInt64?) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeNacosServerInterfaces返回参数结构体
    public struct DescribeNacosServerInterfacesResponse: TCResponseModel {
        /// 接口总个数
        public let totalCount: UInt64
        
        /// 接口列表
        public let content: [NacosServerInterface]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case content = "Content"
            case requestId = "RequestId"
        }
    }
}
