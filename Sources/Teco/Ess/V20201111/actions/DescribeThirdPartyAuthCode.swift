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
    /// DescribeThirdPartyAuthCode请求参数结构体
    public struct DescribeThirdPartyAuthCodeRequest: TCRequestModel {
        /// 电子签小程序跳转客户小程序时携带的授权查看码
        public let authCode: String

        /// 操作人信息
        public let `operator`: UserInfo?

        /// 代理相关应用信息，如集团主企业代子企业操作的场景中ProxyOrganizationId必填
        public let agent: Agent?

        public init(authCode: String, operator: UserInfo? = nil, agent: Agent? = nil) {
            self.authCode = authCode
            self.operator = `operator`
            self.agent = agent
        }

        enum CodingKeys: String, CodingKey {
            case authCode = "AuthCode"
            case `operator` = "Operator"
            case agent = "Agent"
        }
    }

    /// DescribeThirdPartyAuthCode返回参数结构体
    public struct DescribeThirdPartyAuthCodeResponse: TCResponseModel {
        /// 用户是否实名，VERIFIED 为实名，UNVERIFIED 未实名
        public let verifyStatus: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case verifyStatus = "VerifyStatus"
            case requestId = "RequestId"
        }
    }

    /// 通过AuthCode查询用户是否实名
    @inlinable
    public func describeThirdPartyAuthCode(_ input: DescribeThirdPartyAuthCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeThirdPartyAuthCodeResponse> {
        self.client.execute(action: "DescribeThirdPartyAuthCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通过AuthCode查询用户是否实名
    @inlinable
    public func describeThirdPartyAuthCode(_ input: DescribeThirdPartyAuthCodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeThirdPartyAuthCodeResponse {
        try await self.client.execute(action: "DescribeThirdPartyAuthCode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通过AuthCode查询用户是否实名
    @inlinable
    public func describeThirdPartyAuthCode(authCode: String, operator: UserInfo? = nil, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeThirdPartyAuthCodeResponse> {
        self.describeThirdPartyAuthCode(.init(authCode: authCode, operator: `operator`, agent: agent), region: region, logger: logger, on: eventLoop)
    }

    /// 通过AuthCode查询用户是否实名
    @inlinable
    public func describeThirdPartyAuthCode(authCode: String, operator: UserInfo? = nil, agent: Agent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeThirdPartyAuthCodeResponse {
        try await self.describeThirdPartyAuthCode(.init(authCode: authCode, operator: `operator`, agent: agent), region: region, logger: logger, on: eventLoop)
    }
}
