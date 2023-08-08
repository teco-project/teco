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

extension Wedata {
    /// UpdateWorkflowOwner请求参数结构体
    public struct UpdateWorkflowOwnerRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String

        /// 工作流Ids
        public let workflowIds: [String]?

        /// 责任人，多个以';'号分割
        public let owner: String?

        /// 责任人UserId，多个以';'号分割
        public let ownerId: String?

        public init(projectId: String, workflowIds: [String]? = nil, owner: String? = nil, ownerId: String? = nil) {
            self.projectId = projectId
            self.workflowIds = workflowIds
            self.owner = owner
            self.ownerId = ownerId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case workflowIds = "WorkflowIds"
            case owner = "Owner"
            case ownerId = "OwnerId"
        }
    }

    /// UpdateWorkflowOwner返回参数结构体
    public struct UpdateWorkflowOwnerResponse: TCResponseModel {
        /// 响应数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: BatchOperationOpsDto?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 修改工作流责任人
    @inlinable
    public func updateWorkflowOwner(_ input: UpdateWorkflowOwnerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateWorkflowOwnerResponse> {
        self.client.execute(action: "UpdateWorkflowOwner", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改工作流责任人
    @inlinable
    public func updateWorkflowOwner(_ input: UpdateWorkflowOwnerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateWorkflowOwnerResponse {
        try await self.client.execute(action: "UpdateWorkflowOwner", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改工作流责任人
    @inlinable
    public func updateWorkflowOwner(projectId: String, workflowIds: [String]? = nil, owner: String? = nil, ownerId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateWorkflowOwnerResponse> {
        self.updateWorkflowOwner(.init(projectId: projectId, workflowIds: workflowIds, owner: owner, ownerId: ownerId), region: region, logger: logger, on: eventLoop)
    }

    /// 修改工作流责任人
    @inlinable
    public func updateWorkflowOwner(projectId: String, workflowIds: [String]? = nil, owner: String? = nil, ownerId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateWorkflowOwnerResponse {
        try await self.updateWorkflowOwner(.init(projectId: projectId, workflowIds: workflowIds, owner: owner, ownerId: ownerId), region: region, logger: logger, on: eventLoop)
    }
}