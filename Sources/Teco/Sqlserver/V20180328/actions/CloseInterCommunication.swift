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

extension Sqlserver {
    /// 关闭实例互通
    ///
    /// 本接口（CloseInterCommunication）用于关闭实例互通。
    @inlinable
    public func closeInterCommunication(_ input: CloseInterCommunicationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CloseInterCommunicationResponse > {
        self.client.execute(action: "CloseInterCommunication", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 关闭实例互通
    ///
    /// 本接口（CloseInterCommunication）用于关闭实例互通。
    @inlinable
    public func closeInterCommunication(_ input: CloseInterCommunicationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseInterCommunicationResponse {
        try await self.client.execute(action: "CloseInterCommunication", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CloseInterCommunication请求参数结构体
    public struct CloseInterCommunicationRequest: TCRequestModel {
        /// 关闭互通的实例ID集合
        public let instanceIdSet: [String]
        
        public init (instanceIdSet: [String]) {
            self.instanceIdSet = instanceIdSet
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIdSet = "InstanceIdSet"
        }
    }
    
    /// CloseInterCommunication返回参数结构体
    public struct CloseInterCommunicationResponse: TCResponseModel {
        /// 实例和异步流程ID
        public let interInstanceFlowSet: [InterInstanceFlow]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case interInstanceFlowSet = "InterInstanceFlowSet"
            case requestId = "RequestId"
        }
    }
}