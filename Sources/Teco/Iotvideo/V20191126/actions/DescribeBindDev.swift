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
    /// DescribeBindDev请求参数结构体
    public struct DescribeBindDevRequest: TCRequest {
        /// 终端用户在IoT Video上的唯一标识ID
        public let accessId: String

        public init(accessId: String) {
            self.accessId = accessId
        }

        enum CodingKeys: String, CodingKey {
            case accessId = "AccessId"
        }
    }

    /// DescribeBindDev返回参数结构体
    public struct DescribeBindDevResponse: TCResponse {
        /// 绑定的设备列表信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: [BindDevInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询终端用户绑定的设备列表
    ///
    /// 本接口（DescribeBindDev）用于查询终端用户绑定的设备列表。
    @inlinable
    public func describeBindDev(_ input: DescribeBindDevRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBindDevResponse> {
        self.client.execute(action: "DescribeBindDev", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询终端用户绑定的设备列表
    ///
    /// 本接口（DescribeBindDev）用于查询终端用户绑定的设备列表。
    @inlinable
    public func describeBindDev(_ input: DescribeBindDevRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBindDevResponse {
        try await self.client.execute(action: "DescribeBindDev", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询终端用户绑定的设备列表
    ///
    /// 本接口（DescribeBindDev）用于查询终端用户绑定的设备列表。
    @inlinable
    public func describeBindDev(accessId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBindDevResponse> {
        self.describeBindDev(.init(accessId: accessId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询终端用户绑定的设备列表
    ///
    /// 本接口（DescribeBindDev）用于查询终端用户绑定的设备列表。
    @inlinable
    public func describeBindDev(accessId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBindDevResponse {
        try await self.describeBindDev(.init(accessId: accessId), region: region, logger: logger, on: eventLoop)
    }
}
