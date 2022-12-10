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

extension Iecp {
    /// 修改边缘单元NodeUnit模板
    ///
    /// 修改边缘单元NodeUnit模板
    @inlinable
    public func modifyNodeUnitTemplate(_ input: ModifyNodeUnitTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyNodeUnitTemplateResponse > {
        self.client.execute(action: "ModifyNodeUnitTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改边缘单元NodeUnit模板
    ///
    /// 修改边缘单元NodeUnit模板
    @inlinable
    public func modifyNodeUnitTemplate(_ input: ModifyNodeUnitTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyNodeUnitTemplateResponse {
        try await self.client.execute(action: "ModifyNodeUnitTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyNodeUnitTemplate请求参数结构体
    public struct ModifyNodeUnitTemplateRequest: TCRequestModel {
        /// IECP边缘单元ID
        public let edgeUnitId: UInt64
        
        /// NodeUnit模板ID
        public let nodeUnitTemplateID: UInt64
        
        /// 包含的节点列表
        public let nodes: [String]?
        
        public init (edgeUnitId: UInt64, nodeUnitTemplateID: UInt64, nodes: [String]?) {
            self.edgeUnitId = edgeUnitId
            self.nodeUnitTemplateID = nodeUnitTemplateID
            self.nodes = nodes
        }
        
        enum CodingKeys: String, CodingKey {
            case edgeUnitId = "EdgeUnitId"
            case nodeUnitTemplateID = "NodeUnitTemplateID"
            case nodes = "Nodes"
        }
    }
    
    /// ModifyNodeUnitTemplate返回参数结构体
    public struct ModifyNodeUnitTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}