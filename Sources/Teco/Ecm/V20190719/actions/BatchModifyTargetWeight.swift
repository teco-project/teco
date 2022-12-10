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

extension Ecm {
    /// 批量修改监听器绑定的后端机器的转发权重
    ///
    /// 批量修改监听器绑定的后端机器的转发权重。
    @inlinable
    public func batchModifyTargetWeight(_ input: BatchModifyTargetWeightRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < BatchModifyTargetWeightResponse > {
        self.client.execute(action: "BatchModifyTargetWeight", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量修改监听器绑定的后端机器的转发权重
    ///
    /// 批量修改监听器绑定的后端机器的转发权重。
    @inlinable
    public func batchModifyTargetWeight(_ input: BatchModifyTargetWeightRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchModifyTargetWeightResponse {
        try await self.client.execute(action: "BatchModifyTargetWeight", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// BatchModifyTargetWeight请求参数结构体
    public struct BatchModifyTargetWeightRequest: TCRequestModel {
        /// 负载均衡实例 ID
        public let loadBalancerId: String
        
        /// 要批量修改权重的列表
        public let modifyList: [TargetsWeightRule]
        
        public init (loadBalancerId: String, modifyList: [TargetsWeightRule]) {
            self.loadBalancerId = loadBalancerId
            self.modifyList = modifyList
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case modifyList = "ModifyList"
        }
    }
    
    /// BatchModifyTargetWeight返回参数结构体
    public struct BatchModifyTargetWeightResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}