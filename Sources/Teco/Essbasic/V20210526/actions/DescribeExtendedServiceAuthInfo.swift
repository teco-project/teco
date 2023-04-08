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
    /// DescribeExtendedServiceAuthInfo请求参数结构体
    public struct DescribeExtendedServiceAuthInfoRequest: TCRequestModel {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填
        ///
        /// 注: 此接口 参数Agent. ProxyOperator.OpenId 需要传递超管或者法人的OpenId
        public let agent: Agent

        public init(agent: Agent) {
            self.agent = agent
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
        }
    }

    /// DescribeExtendedServiceAuthInfo返回参数结构体
    public struct DescribeExtendedServiceAuthInfoResponse: TCResponseModel {
        /// 企业扩展服务授权信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authInfo: [ExtentServiceAuthInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case authInfo = "AuthInfo"
            case requestId = "RequestId"
        }
    }

    /// 查询企业扩展服务授权信息
    ///
    /// 查询企业扩展服务授权信息，企业经办人需要是企业超管或者法人
    @inlinable
    public func describeExtendedServiceAuthInfo(_ input: DescribeExtendedServiceAuthInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExtendedServiceAuthInfoResponse> {
        self.client.execute(action: "DescribeExtendedServiceAuthInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询企业扩展服务授权信息
    ///
    /// 查询企业扩展服务授权信息，企业经办人需要是企业超管或者法人
    @inlinable
    public func describeExtendedServiceAuthInfo(_ input: DescribeExtendedServiceAuthInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExtendedServiceAuthInfoResponse {
        try await self.client.execute(action: "DescribeExtendedServiceAuthInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询企业扩展服务授权信息
    ///
    /// 查询企业扩展服务授权信息，企业经办人需要是企业超管或者法人
    @inlinable
    public func describeExtendedServiceAuthInfo(agent: Agent, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExtendedServiceAuthInfoResponse> {
        self.describeExtendedServiceAuthInfo(.init(agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 查询企业扩展服务授权信息
    ///
    /// 查询企业扩展服务授权信息，企业经办人需要是企业超管或者法人
    @inlinable
    public func describeExtendedServiceAuthInfo(agent: Agent, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExtendedServiceAuthInfoResponse {
        try await self.describeExtendedServiceAuthInfo(.init(agent: agent), region: region, logger: logger, on: eventLoop)
    }
}
