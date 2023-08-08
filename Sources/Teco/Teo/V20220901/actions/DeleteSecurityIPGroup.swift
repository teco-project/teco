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

extension Teo {
    /// DeleteSecurityIPGroup请求参数结构体
    public struct DeleteSecurityIPGroupRequest: TCRequestModel {
        /// 站点 Id。
        public let zoneId: String

        /// IP 组 Id。
        public let groupId: Int64

        public init(zoneId: String, groupId: Int64) {
            self.zoneId = zoneId
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case groupId = "GroupId"
        }
    }

    /// DeleteSecurityIPGroup返回参数结构体
    public struct DeleteSecurityIPGroupResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除安全 IP 组
    ///
    /// 删除指定 IP 组，如果有规则引用了 IP 组情况，则不允许删除。
    @inlinable @discardableResult
    public func deleteSecurityIPGroup(_ input: DeleteSecurityIPGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSecurityIPGroupResponse> {
        self.client.execute(action: "DeleteSecurityIPGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除安全 IP 组
    ///
    /// 删除指定 IP 组，如果有规则引用了 IP 组情况，则不允许删除。
    @inlinable @discardableResult
    public func deleteSecurityIPGroup(_ input: DeleteSecurityIPGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecurityIPGroupResponse {
        try await self.client.execute(action: "DeleteSecurityIPGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除安全 IP 组
    ///
    /// 删除指定 IP 组，如果有规则引用了 IP 组情况，则不允许删除。
    @inlinable @discardableResult
    public func deleteSecurityIPGroup(zoneId: String, groupId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteSecurityIPGroupResponse> {
        self.deleteSecurityIPGroup(.init(zoneId: zoneId, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除安全 IP 组
    ///
    /// 删除指定 IP 组，如果有规则引用了 IP 组情况，则不允许删除。
    @inlinable @discardableResult
    public func deleteSecurityIPGroup(zoneId: String, groupId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteSecurityIPGroupResponse {
        try await self.deleteSecurityIPGroup(.init(zoneId: zoneId, groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}