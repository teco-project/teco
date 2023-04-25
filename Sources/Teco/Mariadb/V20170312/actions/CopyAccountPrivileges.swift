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

extension Mariadb {
    /// CopyAccountPrivileges请求参数结构体
    public struct CopyAccountPrivilegesRequest: TCRequestModel {
        /// 实例 ID，形如：tdsql-ow728lmc，可以通过 DescribeDBInstances 查询实例详情获得。
        public let instanceId: String

        /// 源用户名
        public let srcUserName: String

        /// 源用户允许的访问 host
        public let srcHost: String

        /// 目的用户名
        public let dstUserName: String

        /// 目的用户允许的访问 host
        public let dstHost: String

        /// 源账号的 ReadOnly 属性
        public let srcReadOnly: String?

        /// 目的账号的 ReadOnly 属性
        public let dstReadOnly: String?

        public init(instanceId: String, srcUserName: String, srcHost: String, dstUserName: String, dstHost: String, srcReadOnly: String? = nil, dstReadOnly: String? = nil) {
            self.instanceId = instanceId
            self.srcUserName = srcUserName
            self.srcHost = srcHost
            self.dstUserName = dstUserName
            self.dstHost = dstHost
            self.srcReadOnly = srcReadOnly
            self.dstReadOnly = dstReadOnly
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case srcUserName = "SrcUserName"
            case srcHost = "SrcHost"
            case dstUserName = "DstUserName"
            case dstHost = "DstHost"
            case srcReadOnly = "SrcReadOnly"
            case dstReadOnly = "DstReadOnly"
        }
    }

    /// CopyAccountPrivileges返回参数结构体
    public struct CopyAccountPrivilegesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 复制账号权限
    ///
    /// 本接口（CopyAccountPrivileges）用于复制云数据库账号的权限。
    /// 注意：相同用户名，不同Host是不同的账号，Readonly属性相同的账号之间才能复制权限。
    @inlinable @discardableResult
    public func copyAccountPrivileges(_ input: CopyAccountPrivilegesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyAccountPrivilegesResponse> {
        self.client.execute(action: "CopyAccountPrivileges", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 复制账号权限
    ///
    /// 本接口（CopyAccountPrivileges）用于复制云数据库账号的权限。
    /// 注意：相同用户名，不同Host是不同的账号，Readonly属性相同的账号之间才能复制权限。
    @inlinable @discardableResult
    public func copyAccountPrivileges(_ input: CopyAccountPrivilegesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyAccountPrivilegesResponse {
        try await self.client.execute(action: "CopyAccountPrivileges", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 复制账号权限
    ///
    /// 本接口（CopyAccountPrivileges）用于复制云数据库账号的权限。
    /// 注意：相同用户名，不同Host是不同的账号，Readonly属性相同的账号之间才能复制权限。
    @inlinable @discardableResult
    public func copyAccountPrivileges(instanceId: String, srcUserName: String, srcHost: String, dstUserName: String, dstHost: String, srcReadOnly: String? = nil, dstReadOnly: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyAccountPrivilegesResponse> {
        self.copyAccountPrivileges(.init(instanceId: instanceId, srcUserName: srcUserName, srcHost: srcHost, dstUserName: dstUserName, dstHost: dstHost, srcReadOnly: srcReadOnly, dstReadOnly: dstReadOnly), region: region, logger: logger, on: eventLoop)
    }

    /// 复制账号权限
    ///
    /// 本接口（CopyAccountPrivileges）用于复制云数据库账号的权限。
    /// 注意：相同用户名，不同Host是不同的账号，Readonly属性相同的账号之间才能复制权限。
    @inlinable @discardableResult
    public func copyAccountPrivileges(instanceId: String, srcUserName: String, srcHost: String, dstUserName: String, dstHost: String, srcReadOnly: String? = nil, dstReadOnly: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyAccountPrivilegesResponse {
        try await self.copyAccountPrivileges(.init(instanceId: instanceId, srcUserName: srcUserName, srcHost: srcHost, dstUserName: dstUserName, dstHost: dstHost, srcReadOnly: srcReadOnly, dstReadOnly: dstReadOnly), region: region, logger: logger, on: eventLoop)
    }
}
