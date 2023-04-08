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

extension Cfw {
    /// DescribeIPStatusList请求参数结构体
    public struct DescribeIPStatusListRequest: TCRequestModel {
        /// 资产Id
        public let ipList: [String]

        public init(ipList: [String]) {
            self.ipList = ipList
        }

        enum CodingKeys: String, CodingKey {
            case ipList = "IPList"
        }
    }

    /// DescribeIPStatusList返回参数结构体
    public struct DescribeIPStatusListResponse: TCResponseModel {
        /// ip状态信息
        public let statusList: [IPDefendStatus]

        /// 状态码
        public let returnCode: Int64

        /// 状态信息
        public let returnMsg: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case statusList = "StatusList"
            case returnCode = "ReturnCode"
            case returnMsg = "ReturnMsg"
            case requestId = "RequestId"
        }
    }

    /// ip防护状态查询
    @inlinable
    public func describeIPStatusList(_ input: DescribeIPStatusListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIPStatusListResponse> {
        self.client.execute(action: "DescribeIPStatusList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// ip防护状态查询
    @inlinable
    public func describeIPStatusList(_ input: DescribeIPStatusListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIPStatusListResponse {
        try await self.client.execute(action: "DescribeIPStatusList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// ip防护状态查询
    @inlinable
    public func describeIPStatusList(ipList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIPStatusListResponse> {
        self.describeIPStatusList(.init(ipList: ipList), region: region, logger: logger, on: eventLoop)
    }

    /// ip防护状态查询
    @inlinable
    public func describeIPStatusList(ipList: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIPStatusListResponse {
        try await self.describeIPStatusList(.init(ipList: ipList), region: region, logger: logger, on: eventLoop)
    }
}
