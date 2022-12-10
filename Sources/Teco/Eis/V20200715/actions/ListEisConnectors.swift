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
    /// 获取连接器列表
    ///
    /// 连接器列表
    @inlinable
    public func listEisConnectors(_ input: ListEisConnectorsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListEisConnectorsResponse > {
        self.client.execute(action: "ListEisConnectors", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取连接器列表
    ///
    /// 连接器列表
    @inlinable
    public func listEisConnectors(_ input: ListEisConnectorsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListEisConnectorsResponse {
        try await self.client.execute(action: "ListEisConnectors", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ListEisConnectors请求参数结构体
    public struct ListEisConnectorsRequest: TCRequestModel {
        /// 连接器名称,非必输，如输入则按照输入值模糊匹配
        public let connectorName: String?
        
        /// 分页参数,数据偏移量
        public let offset: Int64?
        
        /// 分页参数,每页显示的条数
        public let limit: Int64?
        
        public init (connectorName: String?, offset: Int64?, limit: Int64?) {
            self.connectorName = connectorName
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case connectorName = "ConnectorName"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// ListEisConnectors返回参数结构体
    public struct ListEisConnectorsResponse: TCResponseModel {
        /// 连接器总数
        public let totalCount: Int64
        
        /// 连接器列表
        public let connectors: [EisConnectorSummary]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case connectors = "Connectors"
            case requestId = "RequestId"
        }
    }
}
