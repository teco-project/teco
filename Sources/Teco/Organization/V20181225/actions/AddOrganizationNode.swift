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

extension Organization {
    /// AddOrganizationNode请求参数结构体
    public struct AddOrganizationNodeRequest: TCRequestModel {
        /// 父组织单元ID
        public let parentNodeId: UInt64

        /// 组织单元名字
        public let name: String

        public init(parentNodeId: UInt64, name: String) {
            self.parentNodeId = parentNodeId
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case parentNodeId = "ParentNodeId"
            case name = "Name"
        }
    }

    /// AddOrganizationNode返回参数结构体
    public struct AddOrganizationNodeResponse: TCResponseModel {
        /// 组织单元ID
        public let nodeId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nodeId = "NodeId"
            case requestId = "RequestId"
        }
    }

    /// 添加企业组织单元
    @inlinable
    public func addOrganizationNode(_ input: AddOrganizationNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddOrganizationNodeResponse> {
        self.client.execute(action: "AddOrganizationNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加企业组织单元
    @inlinable
    public func addOrganizationNode(_ input: AddOrganizationNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddOrganizationNodeResponse {
        try await self.client.execute(action: "AddOrganizationNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加企业组织单元
    @inlinable
    public func addOrganizationNode(parentNodeId: UInt64, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddOrganizationNodeResponse> {
        self.addOrganizationNode(.init(parentNodeId: parentNodeId, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 添加企业组织单元
    @inlinable
    public func addOrganizationNode(parentNodeId: UInt64, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddOrganizationNodeResponse {
        try await self.addOrganizationNode(.init(parentNodeId: parentNodeId, name: name), region: region, logger: logger, on: eventLoop)
    }
}
