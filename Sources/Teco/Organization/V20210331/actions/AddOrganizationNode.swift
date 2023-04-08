//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Organization {
    /// AddOrganizationNode请求参数结构体
    public struct AddOrganizationNodeRequest: TCRequestModel {
        /// 父节点ID。可以调用DescribeOrganizationNodes获取
        public let parentNodeId: UInt64

        /// 节点名称。最大长度为40个字符，支持英文字母、数字、汉字、符号+@、&._[]-
        public let name: String

        /// 备注。
        public let remark: String?

        public init(parentNodeId: UInt64, name: String, remark: String? = nil) {
            self.parentNodeId = parentNodeId
            self.name = name
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case parentNodeId = "ParentNodeId"
            case name = "Name"
            case remark = "Remark"
        }
    }

    /// AddOrganizationNode返回参数结构体
    public struct AddOrganizationNodeResponse: TCResponseModel {
        /// 节点ID。
        public let nodeId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nodeId = "NodeId"
            case requestId = "RequestId"
        }
    }

    /// 添加企业组织节点
    @inlinable
    public func addOrganizationNode(_ input: AddOrganizationNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddOrganizationNodeResponse> {
        self.client.execute(action: "AddOrganizationNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加企业组织节点
    @inlinable
    public func addOrganizationNode(_ input: AddOrganizationNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddOrganizationNodeResponse {
        try await self.client.execute(action: "AddOrganizationNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加企业组织节点
    @inlinable
    public func addOrganizationNode(parentNodeId: UInt64, name: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddOrganizationNodeResponse> {
        self.addOrganizationNode(.init(parentNodeId: parentNodeId, name: name, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 添加企业组织节点
    @inlinable
    public func addOrganizationNode(parentNodeId: UInt64, name: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddOrganizationNodeResponse {
        try await self.addOrganizationNode(.init(parentNodeId: parentNodeId, name: name, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
