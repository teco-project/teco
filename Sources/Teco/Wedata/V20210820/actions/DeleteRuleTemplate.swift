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

extension Wedata {
    /// DeleteRuleTemplate请求参数结构体
    public struct DeleteRuleTemplateRequest: TCRequestModel {
        /// 项目Id
        public let projectId: String?

        /// 模版Id列表
        public let ids: [UInt64]?

        public init(projectId: String? = nil, ids: [UInt64]? = nil) {
            self.projectId = projectId
            self.ids = ids
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case ids = "Ids"
        }
    }

    /// DeleteRuleTemplate返回参数结构体
    public struct DeleteRuleTemplateResponse: TCResponseModel {
        /// 删除成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 删除规则模版
    @inlinable
    public func deleteRuleTemplate(_ input: DeleteRuleTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRuleTemplateResponse > {
        self.client.execute(action: "DeleteRuleTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除规则模版
    @inlinable
    public func deleteRuleTemplate(_ input: DeleteRuleTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRuleTemplateResponse {
        try await self.client.execute(action: "DeleteRuleTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除规则模版
    @inlinable
    public func deleteRuleTemplate(projectId: String? = nil, ids: [UInt64]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteRuleTemplateResponse > {
        self.deleteRuleTemplate(DeleteRuleTemplateRequest(projectId: projectId, ids: ids), logger: logger, on: eventLoop)
    }

    /// 删除规则模版
    @inlinable
    public func deleteRuleTemplate(projectId: String? = nil, ids: [UInt64]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteRuleTemplateResponse {
        try await self.deleteRuleTemplate(DeleteRuleTemplateRequest(projectId: projectId, ids: ids), logger: logger, on: eventLoop)
    }
}
