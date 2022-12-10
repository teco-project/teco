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

extension Clb {
    /// 批量绑定虚拟主机或弹性网卡
    ///
    /// 批量绑定虚拟主机或弹性网卡，支持跨域绑定，支持四层、七层（TCP、UDP、HTTP、HTTPS）协议绑定。批量绑定的资源数量上限为500。只支持VPC网络负载均衡。
    @inlinable
    public func batchRegisterTargets(_ input: BatchRegisterTargetsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < BatchRegisterTargetsResponse > {
        self.client.execute(action: "BatchRegisterTargets", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 批量绑定虚拟主机或弹性网卡
    ///
    /// 批量绑定虚拟主机或弹性网卡，支持跨域绑定，支持四层、七层（TCP、UDP、HTTP、HTTPS）协议绑定。批量绑定的资源数量上限为500。只支持VPC网络负载均衡。
    @inlinable
    public func batchRegisterTargets(_ input: BatchRegisterTargetsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BatchRegisterTargetsResponse {
        try await self.client.execute(action: "BatchRegisterTargets", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// BatchRegisterTargets请求参数结构体
    public struct BatchRegisterTargetsRequest: TCRequestModel {
        /// 负载均衡ID。
        public let loadBalancerId: String
        
        /// 绑定目标。
        public let targets: [BatchTarget]
        
        public init (loadBalancerId: String, targets: [BatchTarget]) {
            self.loadBalancerId = loadBalancerId
            self.targets = targets
        }
        
        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case targets = "Targets"
        }
    }
    
    /// BatchRegisterTargets返回参数结构体
    public struct BatchRegisterTargetsResponse: TCResponseModel {
        /// 绑定失败的监听器ID，如为空表示全部绑定成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failListenerIdSet: [String]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case failListenerIdSet = "FailListenerIdSet"
            case requestId = "RequestId"
        }
    }
}