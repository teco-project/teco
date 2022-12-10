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

extension Sqlserver {
    /// 打开实例的互通
    ///
    /// 本接口（OpenInterCommunication）用于打开实例的互通，实例互通可以实现商业智能服务相互联通。
    @inlinable
    public func openInterCommunication(_ input: OpenInterCommunicationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < OpenInterCommunicationResponse > {
        self.client.execute(action: "OpenInterCommunication", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 打开实例的互通
    ///
    /// 本接口（OpenInterCommunication）用于打开实例的互通，实例互通可以实现商业智能服务相互联通。
    @inlinable
    public func openInterCommunication(_ input: OpenInterCommunicationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenInterCommunicationResponse {
        try await self.client.execute(action: "OpenInterCommunication", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// OpenInterCommunication请求参数结构体
    public struct OpenInterCommunicationRequest: TCRequestModel {
        /// 打开互通组的实例ID集合
        public let instanceIdSet: [String]
        
        public init (instanceIdSet: [String]) {
            self.instanceIdSet = instanceIdSet
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceIdSet = "InstanceIdSet"
        }
    }
    
    /// OpenInterCommunication返回参数结构体
    public struct OpenInterCommunicationResponse: TCResponseModel {
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
