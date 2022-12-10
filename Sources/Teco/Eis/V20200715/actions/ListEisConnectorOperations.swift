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

extension Eis {
    /// 获取连接器操作列表
    @inlinable
    public func listEisConnectorOperations(_ input: ListEisConnectorOperationsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListEisConnectorOperationsResponse > {
        self.client.execute(action: "ListEisConnectorOperations", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取连接器操作列表
    @inlinable
    public func listEisConnectorOperations(_ input: ListEisConnectorOperationsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEisConnectorOperationsResponse {
        try await self.client.execute(action: "ListEisConnectorOperations", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ListEisConnectorOperations请求参数结构体
    public struct ListEisConnectorOperationsRequest: TCRequestModel {
        /// 连接器名称
        public let connectorName: String
        
        /// 连接器版本
        public let connectorVersion: String
        
        public init (connectorName: String, connectorVersion: String) {
            self.connectorName = connectorName
            self.connectorVersion = connectorVersion
        }
        
        enum CodingKeys: String, CodingKey {
            case connectorName = "ConnectorName"
            case connectorVersion = "ConnectorVersion"
        }
    }
    
    /// ListEisConnectorOperations返回参数结构体
    public struct ListEisConnectorOperationsResponse: TCResponseModel {
        /// 连接器列表
        public let operations: [EisConnectionOperation]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case operations = "Operations"
            case requestId = "RequestId"
        }
    }
}
