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

extension Essbasic {
    /// SyncProxyOrganizationOperators请求参数结构体
    public struct SyncProxyOrganizationOperatorsRequest: TCRequestModel {
        /// 渠道应用相关信息。 此接口Agent.AppId 和 Agent.ProxyOrganizationOpenId必填。
        public let agent: Agent

        /// 操作类型，新增:"CREATE"，修改:"UPDATE"，离职:"RESIGN"
        public let operatorType: String

        /// 经办人信息列表，最大长度200
        public let proxyOrganizationOperators: [ProxyOrganizationOperator]

        /// 操作者的信息
        public let `operator`: UserInfo?

        public init(agent: Agent, operatorType: String, proxyOrganizationOperators: [ProxyOrganizationOperator], operator: UserInfo? = nil) {
            self.agent = agent
            self.operatorType = operatorType
            self.proxyOrganizationOperators = proxyOrganizationOperators
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case operatorType = "OperatorType"
            case proxyOrganizationOperators = "ProxyOrganizationOperators"
            case `operator` = "Operator"
        }
    }

    /// SyncProxyOrganizationOperators返回参数结构体
    public struct SyncProxyOrganizationOperatorsResponse: TCResponseModel {
        /// Status 同步状态,全部同步失败接口会直接报错
        /// 1-成功
        /// 2-部分成功
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: Int64?

        /// 同步失败经办人及其失败原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedList: [SyncFailReason]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case failedList = "FailedList"
            case requestId = "RequestId"
        }
    }

    /// 同步企业经办人列表
    ///
    /// 此接口（SyncProxyOrganizationOperators）用于同步渠道子客企业经办人列表，主要是同步经办人的离职状态。子客Web控制台的组织架构管理，是依赖于渠道平台的，无法针对员工做新增/更新/离职等操作。
    /// 若经办人信息有误，或者需要修改，也可以先将之前的经办人做离职操作，然后重新使用控制台链接CreateConsoleLoginUrl让经办人重新实名。
    @inlinable
    public func syncProxyOrganizationOperators(_ input: SyncProxyOrganizationOperatorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SyncProxyOrganizationOperatorsResponse> {
        self.client.execute(action: "SyncProxyOrganizationOperators", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 同步企业经办人列表
    ///
    /// 此接口（SyncProxyOrganizationOperators）用于同步渠道子客企业经办人列表，主要是同步经办人的离职状态。子客Web控制台的组织架构管理，是依赖于渠道平台的，无法针对员工做新增/更新/离职等操作。
    /// 若经办人信息有误，或者需要修改，也可以先将之前的经办人做离职操作，然后重新使用控制台链接CreateConsoleLoginUrl让经办人重新实名。
    @inlinable
    public func syncProxyOrganizationOperators(_ input: SyncProxyOrganizationOperatorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SyncProxyOrganizationOperatorsResponse {
        try await self.client.execute(action: "SyncProxyOrganizationOperators", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 同步企业经办人列表
    ///
    /// 此接口（SyncProxyOrganizationOperators）用于同步渠道子客企业经办人列表，主要是同步经办人的离职状态。子客Web控制台的组织架构管理，是依赖于渠道平台的，无法针对员工做新增/更新/离职等操作。
    /// 若经办人信息有误，或者需要修改，也可以先将之前的经办人做离职操作，然后重新使用控制台链接CreateConsoleLoginUrl让经办人重新实名。
    @inlinable
    public func syncProxyOrganizationOperators(agent: Agent, operatorType: String, proxyOrganizationOperators: [ProxyOrganizationOperator], operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SyncProxyOrganizationOperatorsResponse> {
        self.syncProxyOrganizationOperators(SyncProxyOrganizationOperatorsRequest(agent: agent, operatorType: operatorType, proxyOrganizationOperators: proxyOrganizationOperators, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 同步企业经办人列表
    ///
    /// 此接口（SyncProxyOrganizationOperators）用于同步渠道子客企业经办人列表，主要是同步经办人的离职状态。子客Web控制台的组织架构管理，是依赖于渠道平台的，无法针对员工做新增/更新/离职等操作。
    /// 若经办人信息有误，或者需要修改，也可以先将之前的经办人做离职操作，然后重新使用控制台链接CreateConsoleLoginUrl让经办人重新实名。
    @inlinable
    public func syncProxyOrganizationOperators(agent: Agent, operatorType: String, proxyOrganizationOperators: [ProxyOrganizationOperator], operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SyncProxyOrganizationOperatorsResponse {
        try await self.syncProxyOrganizationOperators(SyncProxyOrganizationOperatorsRequest(agent: agent, operatorType: operatorType, proxyOrganizationOperators: proxyOrganizationOperators, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
