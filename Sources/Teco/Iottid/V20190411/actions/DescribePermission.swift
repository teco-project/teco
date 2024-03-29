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

extension Iottid {
    /// DescribePermission请求参数结构体
    public struct DescribePermissionRequest: TCRequest {
        public init() {
        }
    }

    /// DescribePermission返回参数结构体
    public struct DescribePermissionResponse: TCResponse {
        /// 企业用户
        public let enterpriseUser: Bool

        /// 下载控制台权限
        public let downloadPermission: String

        /// 使用控制台权限
        public let usePermission: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case enterpriseUser = "EnterpriseUser"
            case downloadPermission = "DownloadPermission"
            case usePermission = "UsePermission"
            case requestId = "RequestId"
        }
    }

    /// 查询权限
    ///
    /// 查询企业用户TID平台控制台权限
    @inlinable
    public func describePermission(_ input: DescribePermissionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePermissionResponse> {
        self.client.execute(action: "DescribePermission", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询权限
    ///
    /// 查询企业用户TID平台控制台权限
    @inlinable
    public func describePermission(_ input: DescribePermissionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePermissionResponse {
        try await self.client.execute(action: "DescribePermission", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询权限
    ///
    /// 查询企业用户TID平台控制台权限
    @inlinable
    public func describePermission(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePermissionResponse> {
        self.describePermission(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询权限
    ///
    /// 查询企业用户TID平台控制台权限
    @inlinable
    public func describePermission(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePermissionResponse {
        try await self.describePermission(.init(), region: region, logger: logger, on: eventLoop)
    }
}
