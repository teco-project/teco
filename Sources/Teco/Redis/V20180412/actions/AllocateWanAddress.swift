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

extension Redis {
    /// 开通外网接口
    ///
    /// 开通外网
    @inlinable
    public func allocateWanAddress(_ input: AllocateWanAddressRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AllocateWanAddressResponse > {
        self.client.execute(action: "AllocateWanAddress", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 开通外网接口
    ///
    /// 开通外网
    @inlinable
    public func allocateWanAddress(_ input: AllocateWanAddressRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AllocateWanAddressResponse {
        try await self.client.execute(action: "AllocateWanAddress", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// AllocateWanAddress请求参数结构体
    public struct AllocateWanAddressRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        public init (instanceId: String) {
            self.instanceId = instanceId
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }
    
    /// AllocateWanAddress返回参数结构体
    public struct AllocateWanAddressResponse: TCResponseModel {
        /// 异步流程ID
        public let flowId: Int64
        
        /// 开通外网的状态
        public let wanStatus: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case wanStatus = "WanStatus"
            case requestId = "RequestId"
        }
    }
}
