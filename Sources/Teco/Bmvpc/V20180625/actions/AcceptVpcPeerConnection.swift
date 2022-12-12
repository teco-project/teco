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

extension Bmvpc {
    /// AcceptVpcPeerConnection请求参数结构体
    public struct AcceptVpcPeerConnectionRequest: TCRequestModel {
        /// 黑石对等连接实例ID
        public let vpcPeerConnectionId: String
        
        public init (vpcPeerConnectionId: String) {
            self.vpcPeerConnectionId = vpcPeerConnectionId
        }
        
        enum CodingKeys: String, CodingKey {
            case vpcPeerConnectionId = "VpcPeerConnectionId"
        }
    }
    
    /// AcceptVpcPeerConnection返回参数结构体
    public struct AcceptVpcPeerConnectionResponse: TCResponseModel {
        /// 任务ID
        public let taskId: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
    
    /// 接受黑石对等连接
    @inlinable
    public func acceptVpcPeerConnection(_ input: AcceptVpcPeerConnectionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < AcceptVpcPeerConnectionResponse > {
        self.client.execute(action: "AcceptVpcPeerConnection", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 接受黑石对等连接
    @inlinable
    public func acceptVpcPeerConnection(_ input: AcceptVpcPeerConnectionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AcceptVpcPeerConnectionResponse {
        try await self.client.execute(action: "AcceptVpcPeerConnection", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
