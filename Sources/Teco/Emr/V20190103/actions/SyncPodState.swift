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

extension Emr {
    /// EMR同步POD状态
    ///
    /// EMR同步TKE中POD状态
    @inlinable
    public func syncPodState(_ input: SyncPodStateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SyncPodStateResponse > {
        self.client.execute(action: "SyncPodState", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// EMR同步POD状态
    ///
    /// EMR同步TKE中POD状态
    @inlinable
    public func syncPodState(_ input: SyncPodStateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SyncPodStateResponse {
        try await self.client.execute(action: "SyncPodState", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// SyncPodState请求参数结构体
    public struct SyncPodStateRequest: TCRequestModel {
        /// EmrService中pod状态信息
        public let message: PodState
        
        public init (message: PodState) {
            self.message = message
        }
        
        enum CodingKeys: String, CodingKey {
            case message = "Message"
        }
    }
    
    /// SyncPodState返回参数结构体
    public struct SyncPodStateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
