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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Partners {
    /// DescribeAgentClientGrade请求参数结构体
    public struct DescribeAgentClientGradeRequest: TCRequestModel {
        /// 代客uin
        public let clientUin: String

        public init(clientUin: String) {
            self.clientUin = clientUin
        }

        enum CodingKeys: String, CodingKey {
            case clientUin = "ClientUin"
        }
    }

    /// DescribeAgentClientGrade返回参数结构体
    public struct DescribeAgentClientGradeResponse: TCResponseModel {
        /// 审核状态：0待审核，1，已审核
        public let auditStatus: UInt64

        /// 实名认证状态：0，未实名认证，1实名认证
        public let authState: UInt64

        /// 客户级别
        public let clientGrade: String

        /// 客户类型：1，个人；2，企业；3，其他
        public let clientType: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case auditStatus = "AuditStatus"
            case authState = "AuthState"
            case clientGrade = "ClientGrade"
            case clientType = "ClientType"
            case requestId = "RequestId"
        }
    }

    /// 查询客户级别
    ///
    /// 传入代客uin，查客户级别，客户审核状态，客户实名认证状态
    @inlinable
    public func describeAgentClientGrade(_ input: DescribeAgentClientGradeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentClientGradeResponse> {
        self.client.execute(action: "DescribeAgentClientGrade", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询客户级别
    ///
    /// 传入代客uin，查客户级别，客户审核状态，客户实名认证状态
    @inlinable
    public func describeAgentClientGrade(_ input: DescribeAgentClientGradeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentClientGradeResponse {
        try await self.client.execute(action: "DescribeAgentClientGrade", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询客户级别
    ///
    /// 传入代客uin，查客户级别，客户审核状态，客户实名认证状态
    @inlinable
    public func describeAgentClientGrade(clientUin: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAgentClientGradeResponse> {
        self.describeAgentClientGrade(.init(clientUin: clientUin), region: region, logger: logger, on: eventLoop)
    }

    /// 查询客户级别
    ///
    /// 传入代客uin，查客户级别，客户审核状态，客户实名认证状态
    @inlinable
    public func describeAgentClientGrade(clientUin: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAgentClientGradeResponse {
        try await self.describeAgentClientGrade(.init(clientUin: clientUin), region: region, logger: logger, on: eventLoop)
    }
}
