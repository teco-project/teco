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
    /// ListOrganizationNodes请求参数结构体
    public struct ListOrganizationNodesRequest: TCRequestModel {
        public init() {
        }
    }

    /// ListOrganizationNodes返回参数结构体
    public struct ListOrganizationNodesResponse: TCResponseModel {
        /// 企业组织单元列表
        public let nodes: [OrgNode]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nodes = "Nodes"
            case requestId = "RequestId"
        }
    }

    /// 获取企业组织单元列表
    @inlinable
    public func listOrganizationNodes(_ input: ListOrganizationNodesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListOrganizationNodesResponse > {
        self.client.execute(action: "ListOrganizationNodes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取企业组织单元列表
    @inlinable
    public func listOrganizationNodes(_ input: ListOrganizationNodesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrganizationNodesResponse {
        try await self.client.execute(action: "ListOrganizationNodes", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取企业组织单元列表
    @inlinable
    public func listOrganizationNodes(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ListOrganizationNodesResponse > {
        self.listOrganizationNodes(ListOrganizationNodesRequest(), logger: logger, on: eventLoop)
    }

    /// 获取企业组织单元列表
    @inlinable
    public func listOrganizationNodes(logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrganizationNodesResponse {
        try await self.listOrganizationNodes(ListOrganizationNodesRequest(), logger: logger, on: eventLoop)
    }
}
