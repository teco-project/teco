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

extension Clb {
    /// 通过后端主机反向查找其绑定的传统型负载均衡
    ///
    /// DescribeClassicalLBByInstanceId用于通过后端实例ID获取传统型负载均衡ID列表。
    @inlinable
    public func describeClassicalLBByInstanceId(_ input: DescribeClassicalLBByInstanceIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeClassicalLBByInstanceIdResponse > {
        self.client.execute(action: "DescribeClassicalLBByInstanceId", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 通过后端主机反向查找其绑定的传统型负载均衡
    ///
    /// DescribeClassicalLBByInstanceId用于通过后端实例ID获取传统型负载均衡ID列表。
    @inlinable
    public func describeClassicalLBByInstanceId(_ input: DescribeClassicalLBByInstanceIdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClassicalLBByInstanceIdResponse {
        try await self.client.execute(action: "DescribeClassicalLBByInstanceId", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeClassicalLBByInstanceId请求参数结构体
    public struct DescribeClassicalLBByInstanceIdRequest: TCRequestModel {
        /// 后端实例ID列表。
        public let instanceIds: [String]
        
        public init (instanceIds: [String]) {
            self.instanceIds = instanceIds
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
        }
    }
    
    /// DescribeClassicalLBByInstanceId返回参数结构体
    public struct DescribeClassicalLBByInstanceIdResponse: TCResponseModel {
        /// 负载均衡相关信息列表。
        public let loadBalancerInfoList: [ClassicalLoadBalancerInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerInfoList = "LoadBalancerInfoList"
            case requestId = "RequestId"
        }
    }
}
