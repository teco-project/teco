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

extension Iotvideo {
    /// DescribeRegistrationStatus请求参数结构体
    public struct DescribeRegistrationStatusRequest: TCRequest {
        /// 终端用户的唯一ID列表，0<元素数量<=100
        public let cunionIds: [String]

        public init(cunionIds: [String]) {
            self.cunionIds = cunionIds
        }

        enum CodingKeys: String, CodingKey {
            case cunionIds = "CunionIds"
        }
    }

    /// DescribeRegistrationStatus返回参数结构体
    public struct DescribeRegistrationStatusResponse: TCResponse {
        /// 终端用户注册状态列表
        public let data: [RegisteredStatus]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询终端用户的注册状态
    ///
    /// 本接口（DescribeRegistrationStatus）用于查询终端用户的注册状态。
    @inlinable
    public func describeRegistrationStatus(_ input: DescribeRegistrationStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegistrationStatusResponse> {
        self.client.execute(action: "DescribeRegistrationStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询终端用户的注册状态
    ///
    /// 本接口（DescribeRegistrationStatus）用于查询终端用户的注册状态。
    @inlinable
    public func describeRegistrationStatus(_ input: DescribeRegistrationStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRegistrationStatusResponse {
        try await self.client.execute(action: "DescribeRegistrationStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询终端用户的注册状态
    ///
    /// 本接口（DescribeRegistrationStatus）用于查询终端用户的注册状态。
    @inlinable
    public func describeRegistrationStatus(cunionIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRegistrationStatusResponse> {
        self.describeRegistrationStatus(.init(cunionIds: cunionIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询终端用户的注册状态
    ///
    /// 本接口（DescribeRegistrationStatus）用于查询终端用户的注册状态。
    @inlinable
    public func describeRegistrationStatus(cunionIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRegistrationStatusResponse {
        try await self.describeRegistrationStatus(.init(cunionIds: cunionIds), region: region, logger: logger, on: eventLoop)
    }
}
