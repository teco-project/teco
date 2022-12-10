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

extension Tcaplusdb {
    /// 查询独占集群剩余机器
    ///
    /// 查询独占集群可以申请的剩余机器
    @inlinable
    public func describeMachine(_ input: DescribeMachineRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeMachineResponse > {
        self.client.execute(action: "DescribeMachine", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询独占集群剩余机器
    ///
    /// 查询独占集群可以申请的剩余机器
    @inlinable
    public func describeMachine(_ input: DescribeMachineRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineResponse {
        try await self.client.execute(action: "DescribeMachine", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeMachine请求参数结构体
    public struct DescribeMachineRequest: TCRequestModel {
        /// 不为0，表示查询支持ipv6的机器
        public let ipv6Enable: Int64?
        
        public init (ipv6Enable: Int64?) {
            self.ipv6Enable = ipv6Enable
        }
        
        enum CodingKeys: String, CodingKey {
            case ipv6Enable = "Ipv6Enable"
        }
    }
    
    /// DescribeMachine返回参数结构体
    public struct DescribeMachineResponse: TCResponseModel {
        /// 独占机器资源列表
        public let poolList: [PoolInfo]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case poolList = "PoolList"
            case requestId = "RequestId"
        }
    }
}
