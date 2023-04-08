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

extension Trro {
    /// BoundLicenses请求参数结构体
    public struct BoundLicensesRequest: TCRequestModel {
        /// license数量
        public let count: Int64

        /// 设备id
        public let deviceId: String

        /// 项目ID
        public let projectId: String

        public init(count: Int64, deviceId: String, projectId: String) {
            self.count = count
            self.deviceId = deviceId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case count = "Count"
            case deviceId = "DeviceId"
            case projectId = "ProjectId"
        }
    }

    /// BoundLicenses返回参数结构体
    public struct BoundLicensesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设备绑定license
    ///
    /// 为推流设备绑定license，优先绑定到期时间最近的，到期时间相同优先绑定月包
    @inlinable @discardableResult
    public func boundLicenses(_ input: BoundLicensesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BoundLicensesResponse> {
        self.client.execute(action: "BoundLicenses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设备绑定license
    ///
    /// 为推流设备绑定license，优先绑定到期时间最近的，到期时间相同优先绑定月包
    @inlinable @discardableResult
    public func boundLicenses(_ input: BoundLicensesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BoundLicensesResponse {
        try await self.client.execute(action: "BoundLicenses", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设备绑定license
    ///
    /// 为推流设备绑定license，优先绑定到期时间最近的，到期时间相同优先绑定月包
    @inlinable @discardableResult
    public func boundLicenses(count: Int64, deviceId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BoundLicensesResponse> {
        self.boundLicenses(.init(count: count, deviceId: deviceId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 设备绑定license
    ///
    /// 为推流设备绑定license，优先绑定到期时间最近的，到期时间相同优先绑定月包
    @inlinable @discardableResult
    public func boundLicenses(count: Int64, deviceId: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BoundLicensesResponse {
        try await self.boundLicenses(.init(count: count, deviceId: deviceId, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
