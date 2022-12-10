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

extension Organization {
    /// 更新企业组织节点
    @inlinable
    public func updateOrganizationNode(_ input: UpdateOrganizationNodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateOrganizationNodeResponse > {
        self.client.execute(action: "UpdateOrganizationNode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新企业组织节点
    @inlinable
    public func updateOrganizationNode(_ input: UpdateOrganizationNodeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateOrganizationNodeResponse {
        try await self.client.execute(action: "UpdateOrganizationNode", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateOrganizationNode请求参数结构体
    public struct UpdateOrganizationNodeRequest: TCRequestModel {
        /// 节点ID。
        public let nodeId: UInt64
        
        /// 节点名称。最大长度为40个字符，支持英文字母、数字、汉字、符号+@、&._[]-
        public let name: String?
        
        /// 备注。
        public let remark: String?
        
        public init (nodeId: UInt64, name: String?, remark: String?) {
            self.nodeId = nodeId
            self.name = name
            self.remark = remark
        }
        
        enum CodingKeys: String, CodingKey {
            case nodeId = "NodeId"
            case name = "Name"
            case remark = "Remark"
        }
    }
    
    /// UpdateOrganizationNode返回参数结构体
    public struct UpdateOrganizationNodeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
