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

extension Ecm {
    /// ModifyTargetWeight请求参数结构体
    public struct ModifyTargetWeightRequest: TCRequestModel {
        /// 负载均衡实例 ID
        public let loadBalancerId: String
        
        /// 负载均衡监听器 ID
        public let listenerId: String
        
        /// 要修改权重的后端服务列表
        public let targets: [Target]
        
        /// 后端服务新的转发权重，取值范围：0~100，默认值10。如果设置了 Targets.Weight 参数，则此参数不生效。
        public let weight: Int64?
        
        public init (loadBalancerId: String, listenerId: String, targets: [Target], weight: Int64? = nil) {
            self.loadBalancerId = loadBalancerId
            self.listenerId = listenerId
            self.targets = targets
            self.weight = weight
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case listenerId = "ListenerId"
            case targets = "Targets"
            case weight = "Weight"
        }
    }
    
    /// ModifyTargetWeight返回参数结构体
    public struct ModifyTargetWeightResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 修改监听器绑定的后端机器的转发权重
    ///
    /// 修改监听器绑定的后端机器的转发权重。
    @inlinable
    public func modifyTargetWeight(_ input: ModifyTargetWeightRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyTargetWeightResponse > {
        self.client.execute(action: "ModifyTargetWeight", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改监听器绑定的后端机器的转发权重
    ///
    /// 修改监听器绑定的后端机器的转发权重。
    @inlinable
    public func modifyTargetWeight(_ input: ModifyTargetWeightRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTargetWeightResponse {
        try await self.client.execute(action: "ModifyTargetWeight", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
