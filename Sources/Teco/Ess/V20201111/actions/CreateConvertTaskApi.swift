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

extension Ess {
    /// CreateConvertTaskApi请求参数结构体
    public struct CreateConvertTaskApiRequest: TCRequestModel {
        /// 资源类型 取值范围doc,docx,html,xls,xlsx之一
        public let resourceType: String

        /// 资源名称，长度限制为256字符
        public let resourceName: String

        /// 资源Id，通过UploadFiles获取
        public let resourceId: String

        /// 操作者信息
        public let `operator`: UserInfo?

        /// 应用号信息
        public let agent: Agent?

        /// 暂未开放
        public let organization: OrganizationInfo?

        public init(resourceType: String, resourceName: String, resourceId: String, operator: UserInfo? = nil, agent: Agent? = nil, organization: OrganizationInfo? = nil) {
            self.resourceType = resourceType
            self.resourceName = resourceName
            self.resourceId = resourceId
            self.`operator` = `operator`
            self.agent = agent
            self.organization = organization
        }

        enum CodingKeys: String, CodingKey {
            case resourceType = "ResourceType"
            case resourceName = "ResourceName"
            case resourceId = "ResourceId"
            case `operator` = "Operator"
            case agent = "Agent"
            case organization = "Organization"
        }
    }

    /// CreateConvertTaskApi返回参数结构体
    public struct CreateConvertTaskApiResponse: TCResponseModel {
        /// 转换任务Id
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 创建文件转换任务
    @inlinable
    public func createConvertTaskApi(_ input: CreateConvertTaskApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConvertTaskApiResponse> {
        self.client.execute(action: "CreateConvertTaskApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建文件转换任务
    @inlinable
    public func createConvertTaskApi(_ input: CreateConvertTaskApiRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConvertTaskApiResponse {
        try await self.client.execute(action: "CreateConvertTaskApi", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建文件转换任务
    @inlinable
    public func createConvertTaskApi(resourceType: String, resourceName: String, resourceId: String, operator: UserInfo? = nil, agent: Agent? = nil, organization: OrganizationInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateConvertTaskApiResponse> {
        self.createConvertTaskApi(CreateConvertTaskApiRequest(resourceType: resourceType, resourceName: resourceName, resourceId: resourceId, operator: `operator`, agent: agent, organization: organization), region: region, logger: logger, on: eventLoop)
    }

    /// 创建文件转换任务
    @inlinable
    public func createConvertTaskApi(resourceType: String, resourceName: String, resourceId: String, operator: UserInfo? = nil, agent: Agent? = nil, organization: OrganizationInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateConvertTaskApiResponse {
        try await self.createConvertTaskApi(CreateConvertTaskApiRequest(resourceType: resourceType, resourceName: resourceName, resourceId: resourceId, operator: `operator`, agent: agent, organization: organization), region: region, logger: logger, on: eventLoop)
    }
}
