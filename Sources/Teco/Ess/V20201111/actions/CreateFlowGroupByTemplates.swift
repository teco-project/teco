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

extension Ess {
    /// CreateFlowGroupByTemplates请求参数结构体
    public struct CreateFlowGroupByTemplatesRequest: TCRequest {
        /// 执行本接口操作的员工信息。
        /// 注: `在调用此接口时，请确保指定的员工已获得所需的接口调用权限，并具备接口传入的相应资源的数据权限。`
        public let `operator`: UserInfo

        /// 合同（流程）组名称（可自定义此名称），长度不能超过200，只能由中文、字母、数字和下划线组成。
        public let flowGroupName: String

        /// 合同（流程）组的子合同信息，支持2-50个子合同
        public let flowGroupInfos: [FlowGroupInfo]

        /// 代理企业和员工的信息。
        /// 在集团企业代理子企业操作的场景中，需设置此参数。在此情境下，ProxyOrganizationId（子企业的组织ID）为必填项。
        public let agent: Agent?

        /// 合同（流程）组的配置项信息。
        /// 其中包括：
        ///
        /// - 是否通知本企业签署方
        /// - 是否通知其他签署方
        public let flowGroupOptions: FlowGroupOptions?

        public init(operator: UserInfo, flowGroupName: String, flowGroupInfos: [FlowGroupInfo], agent: Agent? = nil, flowGroupOptions: FlowGroupOptions? = nil) {
            self.operator = `operator`
            self.flowGroupName = flowGroupName
            self.flowGroupInfos = flowGroupInfos
            self.agent = agent
            self.flowGroupOptions = flowGroupOptions
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case flowGroupName = "FlowGroupName"
            case flowGroupInfos = "FlowGroupInfos"
            case agent = "Agent"
            case flowGroupOptions = "FlowGroupOptions"
        }
    }

    /// CreateFlowGroupByTemplates返回参数结构体
    public struct CreateFlowGroupByTemplatesResponse: TCResponse {
        /// 合同(流程)组的合同组Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flowGroupId: String?

        /// 合同(流程)组中子合同列表.
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flowIds: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case flowGroupId = "FlowGroupId"
            case flowIds = "FlowIds"
            case requestId = "RequestId"
        }
    }

    /// 通过多模板创建合同组签署流程
    ///
    /// 此接口（CreateFlowGroupByTemplates）可用于通过多个模板创建合同组签署流程。
    ///
    /// 适用场景：该接口适用于需要一次性完成多份合同签署的情况，多份合同一般具有关联性，用户以目录的形式查看合同。
    @inlinable
    public func createFlowGroupByTemplates(_ input: CreateFlowGroupByTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowGroupByTemplatesResponse> {
        self.client.execute(action: "CreateFlowGroupByTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通过多模板创建合同组签署流程
    ///
    /// 此接口（CreateFlowGroupByTemplates）可用于通过多个模板创建合同组签署流程。
    ///
    /// 适用场景：该接口适用于需要一次性完成多份合同签署的情况，多份合同一般具有关联性，用户以目录的形式查看合同。
    @inlinable
    public func createFlowGroupByTemplates(_ input: CreateFlowGroupByTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowGroupByTemplatesResponse {
        try await self.client.execute(action: "CreateFlowGroupByTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通过多模板创建合同组签署流程
    ///
    /// 此接口（CreateFlowGroupByTemplates）可用于通过多个模板创建合同组签署流程。
    ///
    /// 适用场景：该接口适用于需要一次性完成多份合同签署的情况，多份合同一般具有关联性，用户以目录的形式查看合同。
    @inlinable
    public func createFlowGroupByTemplates(operator: UserInfo, flowGroupName: String, flowGroupInfos: [FlowGroupInfo], agent: Agent? = nil, flowGroupOptions: FlowGroupOptions? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowGroupByTemplatesResponse> {
        self.createFlowGroupByTemplates(.init(operator: `operator`, flowGroupName: flowGroupName, flowGroupInfos: flowGroupInfos, agent: agent, flowGroupOptions: flowGroupOptions), region: region, logger: logger, on: eventLoop)
    }

    /// 通过多模板创建合同组签署流程
    ///
    /// 此接口（CreateFlowGroupByTemplates）可用于通过多个模板创建合同组签署流程。
    ///
    /// 适用场景：该接口适用于需要一次性完成多份合同签署的情况，多份合同一般具有关联性，用户以目录的形式查看合同。
    @inlinable
    public func createFlowGroupByTemplates(operator: UserInfo, flowGroupName: String, flowGroupInfos: [FlowGroupInfo], agent: Agent? = nil, flowGroupOptions: FlowGroupOptions? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowGroupByTemplatesResponse {
        try await self.createFlowGroupByTemplates(.init(operator: `operator`, flowGroupName: flowGroupName, flowGroupInfos: flowGroupInfos, agent: agent, flowGroupOptions: flowGroupOptions), region: region, logger: logger, on: eventLoop)
    }
}
