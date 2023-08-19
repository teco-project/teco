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

extension Bmeip {
    /// ModifyEipAcl请求参数结构体
    public struct ModifyEipAclRequest: TCRequest {
        /// ACL 实例 ID
        public let aclId: String

        /// ACL 名称
        public let aclName: String?

        /// ACL 状态。0：无状态 1：有状态
        public let status: Int64?

        /// 规则类型（in/out）。in：入站规则 out：出站规则
        public let type: String?

        /// ACL规则列表
        public let rules: [EipAclRule]?

        public init(aclId: String, aclName: String? = nil, status: Int64? = nil, type: String? = nil, rules: [EipAclRule]? = nil) {
            self.aclId = aclId
            self.aclName = aclName
            self.status = status
            self.type = type
            self.rules = rules
        }

        enum CodingKeys: String, CodingKey {
            case aclId = "AclId"
            case aclName = "AclName"
            case status = "Status"
            case type = "Type"
            case rules = "Rules"
        }
    }

    /// ModifyEipAcl返回参数结构体
    public struct ModifyEipAclResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改弹性公网IP ACL
    @inlinable @discardableResult
    public func modifyEipAcl(_ input: ModifyEipAclRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEipAclResponse> {
        self.client.execute(action: "ModifyEipAcl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改弹性公网IP ACL
    @inlinable @discardableResult
    public func modifyEipAcl(_ input: ModifyEipAclRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEipAclResponse {
        try await self.client.execute(action: "ModifyEipAcl", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改弹性公网IP ACL
    @inlinable @discardableResult
    public func modifyEipAcl(aclId: String, aclName: String? = nil, status: Int64? = nil, type: String? = nil, rules: [EipAclRule]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEipAclResponse> {
        self.modifyEipAcl(.init(aclId: aclId, aclName: aclName, status: status, type: type, rules: rules), region: region, logger: logger, on: eventLoop)
    }

    /// 修改弹性公网IP ACL
    @inlinable @discardableResult
    public func modifyEipAcl(aclId: String, aclName: String? = nil, status: Int64? = nil, type: String? = nil, rules: [EipAclRule]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEipAclResponse {
        try await self.modifyEipAcl(.init(aclId: aclId, aclName: aclName, status: status, type: type, rules: rules), region: region, logger: logger, on: eventLoop)
    }
}
