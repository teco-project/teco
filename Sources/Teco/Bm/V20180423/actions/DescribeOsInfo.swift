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

extension Bm {
    /// DescribeOsInfo请求参数结构体
    public struct DescribeOsInfoRequest: TCRequestModel {
        /// 设备类型代号。 可以从DescribeDeviceClass查询设备类型列表
        public let deviceClassCode: String?

        public init(deviceClassCode: String? = nil) {
            self.deviceClassCode = deviceClassCode
        }

        enum CodingKeys: String, CodingKey {
            case deviceClassCode = "DeviceClassCode"
        }
    }

    /// DescribeOsInfo返回参数结构体
    public struct DescribeOsInfoResponse: TCResponseModel {
        /// 操作系统信息列表
        public let osInfoSet: [OsInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case osInfoSet = "OsInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 查询操作系统信息
    ///
    /// 查询指定机型所支持的操作系统
    @inlinable
    public func describeOsInfo(_ input: DescribeOsInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOsInfoResponse> {
        self.client.execute(action: "DescribeOsInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询操作系统信息
    ///
    /// 查询指定机型所支持的操作系统
    @inlinable
    public func describeOsInfo(_ input: DescribeOsInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOsInfoResponse {
        try await self.client.execute(action: "DescribeOsInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询操作系统信息
    ///
    /// 查询指定机型所支持的操作系统
    @inlinable
    public func describeOsInfo(deviceClassCode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOsInfoResponse> {
        self.describeOsInfo(.init(deviceClassCode: deviceClassCode), region: region, logger: logger, on: eventLoop)
    }

    /// 查询操作系统信息
    ///
    /// 查询指定机型所支持的操作系统
    @inlinable
    public func describeOsInfo(deviceClassCode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOsInfoResponse {
        try await self.describeOsInfo(.init(deviceClassCode: deviceClassCode), region: region, logger: logger, on: eventLoop)
    }
}
